#include "slow_conv.hh"
#include <sstream>
#include <chrono>

SeqNumDelta SlowConv::count_loss(SeqNum seq) {
	SeqNumDelta segs_lost = 0;
	// for (auto it = unacknowledged_segs.begin(); it != unacknowledged_segs.end();) {
	// 	if (it->first < seq && !(it->second.lost)) {
	// 		segs_lost++;
	// 		it->second.lost = true;
	// 		it = unacknowledged_segs.erase(it);
	// 	} else if (it->first >= seq) {
	// 		break;
	// 	} else {
	// 		it++;
	// 	}
	// }
	auto it = unacknowledged_segs.begin();
	while (it != unacknowledged_segs.end()) {
		if (it->first < seq) {
			if(it->second.lost) {
				std::cerr << "ERROR: Already lost " << seq << "\n";
				log(LogLevel::ERROR, "Already lost " + std::to_string(seq));
			}
			segs_lost++;
			it->second.lost = true;
			it = unacknowledged_segs.erase(it);
		} else {
			break;
		}
	}

	return segs_lost;
}

void SlowConv::onACK(SeqNum ack, Time receiver_timestamp __attribute((unused)),
					 Time sender_timestamp __attribute((unused))) {
	// std::cout << "onACK: " << ack << "\n";
	SeqNum seq = ack - 1;

	// bool loss = false;
	// if (unacknowledged_segs.begin()->first < seq) {
	// 	loss = true;
	// 	std::cout << "Pre  " << seq << " DS: ";
	// 	int count = 0;
	// 	for (auto it = unacknowledged_segs.begin();
	// 		 it != unacknowledged_segs.end(); it++) {
	// 		count++;
	// 		std::cout << it->first << " ";
	// 		if (count > 20) break;
	// 	}
	// 	std::cout << "\n";
	// }

	if (unacknowledged_segs.count(seq) == 0) {
		std::cerr << "ERROR: on ACK Unknown Ack!! " << seq << "\n";
		log(LogLevel::ERROR, "on ACK Unknown Ack!! " + std::to_string(seq));
		return;
	}
	if (unacknowledged_segs.count(seq) > 1) {
		std::cerr << "ERROR: on ACK Dupsent!! " << seq << "\n";
		log(LogLevel::ERROR, "on ACK Dupsent!! " + std::to_string(seq));
		return;
	}
	assert(unacknowledged_segs.count(seq) == 1);

	SegmentData& seg = unacknowledged_segs[seq];
	Time sent_time = seg.send_tstamp;
	unacknowledged_segs.erase(seq);
	if(seg.lost) {
		log(LogLevel::ERROR, "ACK for lost pkt. There is pkt reordering " + std::to_string(seq));
		cum_segs_lost--;
	}

	SeqNumDelta segs_lost = count_loss(seq);
	seg.this_loss_count = segs_lost;

	// if(loss) {
	// 	std::cout << "Post " << seq << " DS: ";
	// 	int count = 0;
	// 	for (auto it = unacknowledged_segs.begin();
	// 		 it != unacknowledged_segs.end(); it++) {
	// 		count++;
	// 		std::cout << it->first << " ";
	// 		if (count > 20) break;
	// 	}
	// 	std::cout << "\n";
	// 	std::cout << "Segs lost " << segs_lost << "\n";
	// }

	Time now = current_timestamp();
	seg.rtt = std::max((TimeDelta)0, now - sent_time);

	cum_segs_delivered++;
	cum_segs_lost+=segs_lost;

	SeqNumDelta inflight =
		cum_segs_sent - cum_segs_delivered - cum_segs_lost;
	if((uint32_t) inflight != unacknowledged_segs.size()) {
		std::cerr << "on ACK inflight " << inflight << " unacknowledged_segs "
				  << unacknowledged_segs.size() << "\n";
	}
	// std::cout<<"This lost count "<<seg.this_loss_count<<"\n";
	update_state(now, seg);
	update_history(now, seg);  // this calls update beliefs
	update_send_history_on_ack(now, seg);
	update_rate_cwnd(now);
}

void SlowConv::onPktSent(SeqNum seq) {
	// std::cout << "onPktSent: " << seq << "\n";

	Time now = current_timestamp();
	// TODO: consider using multimap, as this will overwrite existing entry.
	if (unacknowledged_segs.count(seq) != 0) {
		std::cerr << "ERROR on Sent Dupsent!! " << seq << "\n";
		log(LogLevel::ERROR, "on Sent Dupsent!! " + std::to_string(seq));
	} else {
		unacknowledged_segs[seq] = {now, cum_segs_delivered, cum_segs_sent, 0, 0, false};
		cum_segs_sent++;
	}
	SeqNumDelta inflight = cum_segs_sent - cum_segs_delivered - cum_segs_lost;
	if((uint32_t) inflight != unacknowledged_segs.size()) {
		std::cerr << "on Sent inflight " << inflight << " unacknowledged_segs "
				  << unacknowledged_segs.size() << "\n";
	}
	// update_send_history_on_send(now, seg);
	update_rate_cwnd(now);
}

void SlowConv::update_beliefs_minc_maxc(Time now, const SegmentData &seg __attribute((unused))) {
	// std::cout << "update_beliefs_minc_maxc " << "\n";
	if (history.size() <= 1) {
		return;
	}

	TimeDelta rtprop = beliefs.min_rtt;
	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

	bool this_high_delay;
	bool this_loss;
	bool this_utilized;
	bool cum_utilized = true;

	SegsRate fresh_minc = INIT_MIN_C;
	SegsRate fresh_maxc = INIT_MAX_C;

	const History &et = history.back();
	size_t depth = 0;
	auto hit = history.rbegin();
	hit++;
	for (; hit != history.rend(); hit++) {
		depth++;
		const History &st = *hit;

		this_high_delay = st.interval_min_rtt > rtprop + jitter;
		this_loss = st.interval_segs_lost > 0;
		this_utilized = this_high_delay || this_loss;
		cum_utilized = cum_utilized && this_utilized;

		TimeDelta this_time_window = et.creation_tstamp - st.creation_tstamp;
		SeqNumDelta this_delivered_segs =
			et.creation_cum_delivered_segs - st.creation_cum_delivered_segs;

		fresh_minc = std::max(fresh_minc, (this_delivered_segs * MS_TO_SECS) /
										  (this_time_window + jitter));
		TimeDelta denom = std::max((TimeDelta)0, this_time_window - jitter);
		if (cum_utilized && depth > 1 && denom > 0) {
			fresh_maxc = std::min(fresh_maxc,
								  (this_delivered_segs * MS_TO_SECS) / denom);
		}
	}

	beliefs.minc_since_last_timeout = std::max(beliefs.minc_since_last_timeout, fresh_minc);
	beliefs.maxc_since_last_timeout = std::min(beliefs.maxc_since_last_timeout, fresh_maxc);
	beliefs.maxc_since_last_timeout = std::max(beliefs.maxc_since_last_timeout, get_min_sending_rate());
	beliefs.min_c = std::max(beliefs.min_c, fresh_minc);
	beliefs.max_c = std::min(beliefs.max_c, fresh_maxc);
	beliefs.max_c = std::max(beliefs.max_c, get_min_sending_rate());

	/**
	 * There are 4 things:
	 * - minc since start (using all intervals till now). also known as overall (deprecated)
	 * - minc fresh (just using intervals that end now)
	 * - minc since last timeout (using all intervals since last timeout). also
	 * 	 known as recomputed
	 * - minc at last timeout (use all intervals before last
	 *   timeout)
	 */

	TimeDelta time_since_last_timeout = now - beliefs.last_minc_maxc_timeout_time;
	bool timeout = time_since_last_timeout > beliefs.min_rtt * BELIEFS_TIMEOUT_PERIOD;

	if (timeout) {
		// std::cout << "timeout " << "\n";
		beliefs.last_minc_maxc_timeout_time = now;
		bool minc_changed = beliefs.min_c > beliefs.minc_at_last_timeout;
		bool maxc_changed = beliefs.max_c < beliefs.maxc_at_last_timeout;

		bool minc_changed_significantly =
			beliefs.min_c >
			BELIEFS_CHANGED_SIGNIFICANTLY_THRESH * beliefs.minc_at_last_timeout;
		bool maxc_changed_significantly =
			beliefs.max_c * BELIEFS_CHANGED_SIGNIFICANTLY_THRESH <
			beliefs.maxc_at_last_timeout;
		bool beliefs_invalid = beliefs.max_c < beliefs.min_c;
		bool minc_came_close = minc_changed && beliefs_invalid;
		bool maxc_came_close = maxc_changed && beliefs_invalid;
		bool timeout_minc =
			!minc_changed && (maxc_came_close || !maxc_changed_significantly);
		bool timeout_maxc =
			!maxc_changed && (minc_came_close || !minc_changed_significantly);

		if (timeout_minc) {
			beliefs.min_c = beliefs.minc_since_last_timeout;
		}

		if (timeout_maxc) {
			beliefs.max_c = std::min(beliefs.max_c * TIMEOUT_THRESH,
									 beliefs.maxc_since_last_timeout);
		}

		beliefs.maxc_at_last_timeout = beliefs.max_c;
		beliefs.minc_at_last_timeout = beliefs.min_c;
		beliefs.minc_since_last_timeout = INIT_MIN_C;
		beliefs.maxc_since_last_timeout = INIT_MAX_C;
	}
}

SegsRate SlowConv::get_min_sending_rate() {
	return (MIN_CWND * MS_TO_SECS) / beliefs.min_rtt;
}

// void SlowConv::update_beliefs_minc_lambda(Time now __attribute((unused)), SegmentData seg) {
// 	// std::cout << "update_beliefs_minc_lambda" << std::endl;
// 	if (history.size() <= 1) {
// 		return;
// 	}

// 	TimeDelta rtprop = beliefs.min_rtt;
// 	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

// 	bool this_low_delay;
// 	bool this_loss;
// 	bool this_underutilized;
// 	bool cum_underutilized;

// 	const History &latest = history.back();
// 	this_low_delay = latest.interval_max_rtt <= (rtprop + jitter);
// 	this_loss = latest.interval_segs_lost > 0;
// 	this_underutilized = this_low_delay && !this_loss;
// 	cum_underutilized = this_underutilized;

// 	SeqNum delivered_1rtt_ago = seg.cum_delivered_segs_at_send;
// 	// latest.creation_cum_delivered_segs_at_send;

// 	// log(LogLevel::DEBUG, "min_c_lambda debug cum_underutilized " +
// 	// 						 std::string(cum_underutilized ? "true" : "false"));

// 	SegsRate fresh_minc_lambda = INIT_MIN_C;
// 	size_t depth = 0;
// 	// TODO: can start from history.size()-1.
// 	auto hit = history.rbegin();
// 	hit++;
// 	int hid = history.size()-1;
// 	for (; hit != history.rend(); hit++) {
// 		hid--;
// 		depth++;
// 		History &st = *hit;

// 		this_low_delay = st.interval_max_rtt <= (rtprop + jitter);
// 		this_loss = st.interval_segs_lost > 0;
// 		this_underutilized = this_low_delay && !this_loss;
// 		cum_underutilized = cum_underutilized && this_underutilized;

// 		if (depth < MEASUREMENT_INTERVAL_HISTORY) continue;

// 		const History &et = history[hid + MEASUREMENT_INTERVAL_HISTORY];

// 		// std::stringstream ss;
// 		// ss << "min_c_lambda debug"
// 		//    << " st.creation_tstamp " << st.creation_tstamp
// 		//    << " et.creation_cum_delivered_segs "
// 		//    << et.creation_cum_delivered_segs << " delivered_1rtt_ago "
// 		//    << delivered_1rtt_ago << " this_underutilized "
// 		//    << this_underutilized
// 		//    << " cum_underutilized " << cum_underutilized;
// 		// log(LogLevel::DEBUG, ss.str());

// 		if (et.creation_cum_delivered_segs > delivered_1rtt_ago)
// 			continue;

// 		st.processed = true;

// 		// ss << " st.processed " << st.processed;
// 		// log(LogLevel::DEBUG, ss.str());

// 		if (!cum_underutilized) break;

// 		SeqNumDelta this_segs_sent =
// 			et.creation_cum_sent_segs - st.creation_cum_sent_segs;
// 		TimeDelta this_time_window = et.creation_tstamp - st.creation_tstamp;
// 		fresh_minc_lambda = std::max(
// 			fresh_minc_lambda, (this_segs_sent * MS_TO_SECS) / (this_time_window + jitter));

// 		// ss << " fresh_minc_lambda: " << fresh_minc_lambda;
// 		// log(LogLevel::DEBUG, ss.str());
// 	}

// 	beliefs.min_c_lambda = std::max(beliefs.min_c_lambda, fresh_minc_lambda);
// 	// TODO: Implement timeout
// }

void SlowConv::update_beliefs_minc_lambda(Time now __attribute((unused)), const SegmentData &seg) {
	// std::cout << "update_beliefs_minc_lambda" << std::endl;
	if (send_history.size() <= 1) {
		return;
	}

	TimeDelta rtprop = beliefs.min_rtt;
	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

	bool this_low_delay;
	bool this_loss;
	bool this_underutilized;
	bool cum_underutilized;

	SeqNumDelta max_segs_lost_in_1rtprop = 0;
	bool large_loss_happened = false;
	bool probe_based_timeout = false;
	bool minc_increased_and_lower = false;

	const SendHistory &latest = send_history.back();
	this_low_delay = latest.interval_max_rtt <= (rtprop + jitter);
	this_loss = latest.interval_segs_lost > 0;
	this_underutilized = this_low_delay && !this_loss;
	cum_underutilized = this_underutilized;
	large_loss_happened |=
		latest.interval_segs_lost > 3 * MIN_CWND;
	max_segs_lost_in_1rtprop = std::max(max_segs_lost_in_1rtprop, latest.interval_segs_lost);

	// SeqNum delivered_1rtt_ago = seg.cum_delivered_segs_at_send;
	SeqNum sent_1rtt_ago = seg.cum_sent_segs_at_send;
	// latest.creation_cum_delivered_segs_at_send;

	// log(LogLevel::DEBUG, "min_c_lambda debug cum_underutilized " +
	// 						 std::string(cum_underutilized ? "true" : "false"));

	SegsRate fresh_minc_lambda = INIT_MIN_C;
	size_t depth = 0;
	// TODO: can start from send_history.size()-1.
	auto hit = send_history.rbegin();
	hit++;
	int hid = send_history.size()-1;
	for (; hit != send_history.rend(); hit++) {
		hid--;
		depth++;
		SendHistory &st = *hit;

		this_low_delay = st.interval_max_rtt <= (rtprop + jitter);
		this_loss = st.interval_segs_lost > 0;
		this_underutilized = this_low_delay && !this_loss;
		cum_underutilized = cum_underutilized && this_underutilized;
		large_loss_happened |=
			st.interval_segs_lost > 3 * MIN_CWND;  // 3 = 2 (bq bound) + 1 (excess rate)
		max_segs_lost_in_1rtprop = std::max(max_segs_lost_in_1rtprop, st.interval_segs_lost);

		if (depth < MEASUREMENT_INTERVAL_HISTORY) continue;

		const SendHistory &et = send_history[hid + MEASUREMENT_INTERVAL_HISTORY];

		// std::stringstream ss;
		// ss << "min_c_lambda debug"
		//    << " st.creation_tstamp " << st.creation_tstamp
		//    << " et.creation_cum_delivered_segs "
		//    << et.creation_cum_delivered_segs << " delivered_1rtt_ago "
		//    << delivered_1rtt_ago << " this_underutilized "
		//    << this_underutilized
		//    << " cum_underutilized " << cum_underutilized;
		// log(LogLevel::DEBUG, ss.str());

		// if (et.creation_cum_delivered_segs > delivered_1rtt_ago)
		// 	continue;
		if (et.creation_cum_sent_segs > sent_1rtt_ago)
			continue;

		st.processed = true;

		// ss << " st.processed " << st.processed;
		// log(LogLevel::DEBUG, ss.str());

		if (!cum_underutilized) break;

		SeqNumDelta this_segs_sent =
			et.creation_cum_sent_segs - st.creation_cum_sent_segs;
		TimeDelta this_time_window = et.creation_tstamp - st.creation_tstamp;
		fresh_minc_lambda = std::max(
			fresh_minc_lambda, (this_segs_sent * MS_TO_SECS) / (this_time_window + jitter));

		// ss << " fresh_minc_lambda: " << fresh_minc_lambda;
		// log(LogLevel::DEBUG, ss.str());
	}

	if(fresh_minc_lambda > beliefs.min_c_lambda) {
		beliefs.prev_consistent_min_c_lambda = beliefs.min_c_lambda;
	}
	beliefs.min_c_lambda = std::max(beliefs.min_c_lambda, fresh_minc_lambda);
	beliefs.min_c_lambda_since_last_timeout = std::max(
		beliefs.min_c_lambda_since_last_timeout, fresh_minc_lambda);

	/**
	 * timeout_min_c_lambda = \
		z3.If(timeout_allowed,
			z3.If(large_loss_happened, True,
				z3.If(minc_increased_and_lower, True,
						z3.If(probe_based_timeout, True, False))),
			False)
	*/

	TimeDelta time_since_last_timeout = now - beliefs.last_minc_lambda_timeout_time;
	bool timeout = time_since_last_timeout > beliefs.min_rtt * BELIEFS_TIMEOUT_PERIOD;

	SeqNumDelta inflight = cum_segs_sent - cum_segs_lost - cum_segs_delivered;
	SeqNumDelta max_inflight =
		(rtprop + jitter) * beliefs.min_c_lambda / rtprop + 2 * MIN_CWND;
	bool large_inflight = inflight > max_inflight;
	bool use_timeout = large_loss_happened || large_inflight ||
					   minc_increased_and_lower || probe_based_timeout;
	// TODO: Implement correctly based on the proof. currently,
	//  minc_increased_and_lower and probe_based_timeout are not implemented.
	//  this implementation may not timeout correctly when buffer is large and
	//  the slow_conv CCA is used.

	if (timeout) {
		beliefs.last_minc_lambda_timeout_time = now;

		// std::cout << "time " << now << " use_timeout " << use_timeout
		//           << " min_c_lambda " << beliefs.min_c_lambda
		//           << " max_segs_lost_in_1rtprop " << max_segs_lost_in_1rtprop
		//           << " large_loss_happened " << large_loss_happened
		//           << " large_inflight " << large_inflight
		//           << " min_c_lambda_since_last_timeout "
		//           << beliefs.min_c_lambda_since_last_timeout
		//           << " prev_consistent_min_c_lambda "
		//           << beliefs.prev_consistent_min_c_lambda << std::endl;

		if (use_timeout) {
			// Do not use prev_consistent_min_c_lambda as we have guards on
			// when to timeout anyway.
			// if (beliefs.min_c_lambda > beliefs.prev_consistent_min_c_lambda) {
			// 	beliefs.min_c_lambda =
			// 		std::max(beliefs.prev_consistent_min_c_lambda,
			// 				 beliefs.min_c_lambda_since_last_timeout);
			// } else {
			// 	beliefs.min_c_lambda =
			// 		std::max(beliefs.min_c_lambda / TIMEOUT_THRESH,
			// 				 beliefs.min_c_lambda_since_last_timeout);
			// }
			beliefs.min_c_lambda =
					std::max(beliefs.min_c_lambda / TIMEOUT_THRESH,
							 beliefs.min_c_lambda_since_last_timeout);
		}
		beliefs.min_c_lambda_since_last_timeout = INIT_MIN_C;
	}
}

void SlowConv::update_bq_beliefs_on_ack_and_sent(Time now) {
	// Bq = bottleneck queue. In CCAC this is Token queue - packet queue.
	// Bq 1 (Inflight upper bound on bq)
	beliefs.bq_belief1 = cum_segs_sent - cum_segs_delivered - cum_segs_lost;
	beliefs.bq_belief1 = std::max((SeqNumDelta)0, beliefs.bq_belief1);


	// Bq 2 Tighter upper bound when beliefs are consistent.
	SeqNumDelta estimated_sent = cum_segs_sent - beliefs.last_bq_update_segs_sent;
	beliefs.last_bq_update_segs_sent = cum_segs_sent;
	TimeDelta time_since_last_update = now - beliefs.last_bq_update_time;
	beliefs.last_bq_update_time = now;
	SeqNumDelta estimated_delivered =
		(beliefs.min_c_lambda * time_since_last_update) / MS_TO_SECS;
	// ^^ time is in ms while rate is in segs/s.
	beliefs.bq_belief2 =
		beliefs.bq_belief2 + estimated_sent - estimated_delivered;
	beliefs.bq_belief2 = std::max((SeqNumDelta)0, beliefs.bq_belief2);
	beliefs.bq_belief2 = std::min(beliefs.bq_belief2, beliefs.bq_belief1);

	// std::stringstream ss;
	// ss << "time " << now;
	// ss << " min_c_lambda " << beliefs.min_c_lambda << " bq_belief1 "
	//    << beliefs.bq_belief1 << " bq_belief2 " << beliefs.bq_belief2;
	// ss << " estimated_sent " << estimated_sent << " estimated_delivered "
	//    << estimated_delivered << " time_since_last_update "
	//    << time_since_last_update;
	// log(LogLevel::INFO, ss.str());
}

void SlowConv::update_beliefs_on_ack(Time now, const SegmentData &seg, bool updated_history,
							  TimeDelta time_since_last_update __attribute((unused))) {
	// std::cout << "update_beliefs_on_ack" << std::endl;
	beliefs.min_rtt = std::min(beliefs.min_rtt, seg.rtt);
	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

	beliefs.min_qdel =
		std::max((TimeDelta)0, seg.rtt - beliefs.min_rtt - jitter);

	if (updated_history) {
		update_beliefs_minc_maxc(now, seg);
		update_beliefs_minc_lambda(now, seg);
	}
}

void SlowConv::update_history(Time now, const SegmentData &seg) {
	// if (seg.this_loss_count > 0) {
	// 	std::cout << "update_history" << std::endl;
	// 	std::cout << "seg.this_loss_count " << seg.this_loss_count << std::endl;
	// }
	TimeDelta inter_history_time = INTER_HISTORY_TIME * beliefs.min_rtt;
	TimeDelta time_since_last_update = now - last_history_update_time;
	if (time_since_last_update >= inter_history_time) {
		last_history_update_time = now;
		History h = {now,
					 seg.rtt,
					 seg.rtt,
					 cum_segs_sent,
					 cum_segs_delivered,
					 cum_segs_lost,
					 sending_rate,
					 seg.cum_delivered_segs_at_send,
					 seg.this_loss_count,
					 false};
		history.push_back(h);
		update_beliefs_on_ack(now, seg, true, time_since_last_update);
	} else {
		History &latest = history.back();
		latest.interval_max_rtt = std::max(latest.interval_max_rtt, seg.rtt);
		latest.interval_min_rtt = std::min(latest.interval_min_rtt, seg.rtt);
		latest.interval_segs_lost += seg.this_loss_count;
		update_beliefs_on_ack(now, seg, false, time_since_last_update);
	}
}

// void SlowConv::update_send_history_on_send(Time now, SegmentData seg) {
// 	// std::cout << "update_send_history" << std::endl;
// 	TimeDelta inter_history_time = INTER_HISTORY_TIME * beliefs.min_rtt;
// 	TimeDelta time_since_last_update = now - last_send_history_update_time;
// 	if (time_since_last_update >= inter_history_time) {
// 		last_send_history_update_time = now;
// 		SendHistory h = {now,
// 					 TIME_DELTA_MAX,
// 					 0,
// 					 cum_segs_sent,
// 					 cum_segs_delivered,
// 					 cum_segs_lost,
// 					 sending_rate,
// 					 seg.cum_delivered_segs_at_send,
// 					 seg.this_loss_count,
// 					 false};
// 		send_history.push_back(h);
// 		// update_beliefs_on_ack(now, seg, true, time_since_last_update);
// 		// TODO: check this.
// 	}
// }

void SlowConv::update_send_history_on_rate_update(Time now) {
	// std::cout << "update_send_history" << std::endl;
	assert (INTER_HISTORY_TIME == INTER_RATE_UPDATE_TIME);
	last_send_history_update_time = now;
	SendHistory h = {now,
					TIME_DELTA_MAX,
					0,
					cum_segs_sent,
					cum_segs_delivered,
					cum_segs_lost,
					sending_rate,
					cum_segs_delivered,
					0,
					false};
	send_history.push_back(h);
	// update_beliefs_on_ack(now, seg, true, time_since_last_update);
	// TODO: check this.
}

void SlowConv::update_send_history_on_ack(Time now __attribute((unused)), const SegmentData &seg) {
	if(send_history.empty()) return;
	// TimeDelta time_since_last_update = now - last_send_history_update_time;
	SendHistory &latest = send_history.back();
	latest.interval_max_rtt = std::max(latest.interval_max_rtt, seg.rtt);
	latest.interval_min_rtt = std::min(latest.interval_min_rtt, seg.rtt);
	latest.interval_segs_lost += seg.this_loss_count;
	// update_beliefs_on_ack(now, seg, false, time_since_last_update);
}

void SlowConv::update_rate_cwnd(Time now) {
	// std::cout << "update_rate_cwnd" << std::endl;
	TimeDelta time_since_last_rate_update = now - last_rate_update_time;
	if (time_since_last_rate_update >= INTER_RATE_UPDATE_TIME * beliefs.min_rtt) {
		last_rate_update_time = now;
		expected_cum_sent += (sending_rate * time_since_last_rate_update) / MS_TO_SECS;

		// Done here as we want to synchronize this with rate_cwnd update.
		update_bq_beliefs_on_ack_and_sent(now);

		if(state == State::SLOW_START) {
			update_rate_cwnd_fast_conv(now);
		}
		else if (state == State::CONG_AVOID) {
			update_rate_cwnd_slow_conv(now);
		}
		else {
			std::cerr << "State not implemented: " << state << std::endl;
			log(LogLevel::ERROR,
				"State not implemented: " + std::to_string(state));
			// assert(false);
		}

		prev_measured_sending_rate =
			(cum_segs_sent - sent_at_last_rate_update) * MS_TO_SECS /
			time_since_last_rate_update;
		sent_at_last_rate_update = cum_segs_sent;
		update_send_history_on_rate_update(now);
		log_state(now);
		log_beliefs(now);
		log_history(now);
		log_send_history(now);
	}
}

void SlowConv::update_rate_cwnd_slow_conv(Time now __attribute((unused))) {
	TimeDelta rtprop = beliefs.min_rtt;
	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

	SegsRate min_sending_rate = get_min_sending_rate();
	if(beliefs.bq_belief2 > 2 * MIN_CWND) {
		sending_rate = beliefs.min_c_lambda - (beliefs.bq_belief2 * MS_TO_SECS) / beliefs.min_rtt;
	} else {
		sending_rate =
			(MEASUREMENT_INTERVAL_RATE_UPDATE + JITTER_MULTIPLIER) * beliefs.min_c_lambda + min_sending_rate;
	}
	sending_rate = std::max(sending_rate, min_sending_rate);
	cwnd = (2 * beliefs.max_c * (rtprop + jitter)) / MS_TO_SECS;

	// if(oddeven)
	// 	sending_rate = 8000;  // Debug hardcoded rate.
	// else
	// 	sending_rate = min_sending_rate;
	// oddeven = !oddeven;

	_intersend_time = MS_TO_SECS / sending_rate;
	_the_window = cwnd;
}

// void SlowConv::update_rate_cwnd_slow_conv(Time now __attribute((unused))) {
// 	TimeDelta rtprop = beliefs.min_rtt;
// 	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

// 	SegsRate min_sending_rate = get_min_sending_rate();
// 	if(beliefs.bq_belief1 > 2 * MIN_CWND) {
// 		cwnd = MIN_CWND;
// 	} else {
// 		cwnd = (2 * beliefs.max_c * (rtprop + jitter)) / MS_TO_SECS;
// 	}
// 	sending_rate =
// 			(1 + JITTER_MULTIPLIER) * beliefs.min_c_lambda + min_sending_rate;
// 	sending_rate = std::max(sending_rate, min_sending_rate);

// 	_intersend_time = MS_TO_SECS / sending_rate;
// 	_the_window = cwnd;
// }

void SlowConv::update_rate_cwnd_fast_conv(Time now __attribute((unused))) {
	TimeDelta rtprop = beliefs.min_rtt;
	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

	SegsRate min_sending_rate = get_min_sending_rate();
	if(beliefs.min_qdel > 0) {
		sending_rate = beliefs.min_c / 2;
	} else {
		// Trying with adding an additive increment component in hope of
		// fairness
		sending_rate = (1 + JITTER_MULTIPLIER) * beliefs.min_c + min_sending_rate;
	}
	sending_rate = std::max(sending_rate, min_sending_rate);
	cwnd = (2 * beliefs.max_c * (rtprop + jitter)) / MS_TO_SECS;

	_intersend_time = MS_TO_SECS / sending_rate;
	_the_window = cwnd;
}

void SlowConv::log(LogLevel l, std::string msg) {
	// Don't show DEBUG logs
	// Ideally should have used a logging library here...
	if (l > LogLevel::INFO) {
		return;
	}
	if (logfile.is_open()) {
		// std::cout << "Logging";
		logfile << LOG_TYPE_TO_STR[l] << " " << msg << std::endl;
	} else {
		// std::cout << "Log file closed.";
	}
}

void SlowConv::log_state(Time now) {
	std::stringstream ss;
	ss << "new " << "time " << now << " cwnd " << cwnd << " sending_rate " << sending_rate
	   << " state " << state << " prev_measured_sending_rate " << prev_measured_sending_rate;
	ss << " cum_segs_sent " << cum_segs_sent << " cum_segs_delivered "
	   << cum_segs_delivered << " cum_segs_lost " << cum_segs_lost;
	ss << " expected_cum_sent " << expected_cum_sent;
	log(LogLevel::INFO, ss.str());
}

void SlowConv::log_beliefs(Time now) {
	std::stringstream ss;
	ss << "time " << now << " min_rtt " << beliefs.min_rtt << " min_qdel "
	   << beliefs.min_qdel << " min_c " << beliefs.min_c << " max_c "
	   << beliefs.max_c;
	ss << " min_c_lambda " << beliefs.min_c_lambda << " bq_belief1 "
	   << beliefs.bq_belief1 << " bq_belief2 " << beliefs.bq_belief2;
	ss << " unacknowledged_segs " << unacknowledged_segs.size();
	ss << " prev_consistent_min_c_lambda "
	   << beliefs.prev_consistent_min_c_lambda;
	std::chrono::high_resolution_clock::time_point wall_time =
		std::chrono::high_resolution_clock::now();
	ss << " wall_time "
	   << std::chrono::duration_cast<std::chrono::milliseconds>(
			  wall_time.time_since_epoch())
			  .count();
	log(LogLevel::INFO, ss.str());
}

void SlowConv::log_history(Time now __attribute((unused))) {
	TimeDelta rtprop = beliefs.min_rtt;
	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

	boost::circular_buffer<History>::const_reverse_iterator next;
	next = history.rbegin();
	int id = 0;
	log(LogLevel::DEBUG, "ACK history");
	boost::circular_buffer<History>::const_reverse_iterator h;
	for (h = history.rbegin(); h != history.rend(); ++h) {
		bool high_delay = h->interval_min_rtt > (rtprop + jitter);
		bool loss = h->interval_segs_lost > 0;
		bool utilized = high_delay || loss;
		bool low_delay = h->interval_max_rtt <= (rtprop + jitter);
		bool underutilized = low_delay && !loss;
		std::stringstream ss;
		ss << h->to_string();
		ss << " utilized " << utilized << " underutilized " << underutilized;

		if(id > 0) {
			SeqNumDelta this_delivered_segs =
				next->creation_cum_delivered_segs -
				h->creation_cum_delivered_segs;
			SeqNumDelta this_lost_segs =
				next->creation_cum_lost_segs - h->creation_cum_lost_segs;
			SeqNumDelta this_sent_segs =
				next->creation_cum_sent_segs - h->creation_cum_sent_segs;
			TimeDelta window = next->creation_tstamp - h->creation_tstamp;
			ss << " delivered_segs " << this_delivered_segs
			   << " lost_segs " << this_lost_segs
			   << " sent_segs " << this_sent_segs;
			ss << " window " << window;
			ss << " delivered_rate " << (this_delivered_segs * MS_TO_SECS / window)
			   << " sent_rate " << (this_sent_segs * MS_TO_SECS / window);
			next++;
		}
		log(LogLevel::DEBUG, ss.str());
		id++;
	}
}

void SlowConv::log_send_history(Time now __attribute((unused))) {
	TimeDelta rtprop = beliefs.min_rtt;
	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

	boost::circular_buffer<SendHistory>::const_reverse_iterator next;
	next = send_history.rbegin();
	int id = 0;
	log(LogLevel::DEBUG, "Send history");
	boost::circular_buffer<SendHistory>::const_reverse_iterator h;
	for (h = send_history.rbegin(); h != send_history.rend(); ++h) {
		bool high_delay = h->interval_min_rtt > (rtprop + jitter);
		bool loss = h->interval_segs_lost > 0;
		bool utilized = high_delay || loss;
		bool low_delay = h->interval_max_rtt <= (rtprop + jitter);
		bool underutilized = low_delay && !loss;
		std::stringstream ss;
		ss << h->to_string();
		ss << " utilized " << utilized << " underutilized " << underutilized;

		if(id > 0) {
			SeqNumDelta this_delivered_segs =
				next->creation_cum_delivered_segs -
				h->creation_cum_delivered_segs;
			SeqNumDelta this_lost_segs =
				next->creation_cum_lost_segs - h->creation_cum_lost_segs;
			SeqNumDelta this_sent_segs =
				next->creation_cum_sent_segs - h->creation_cum_sent_segs;
			TimeDelta window = next->creation_tstamp - h->creation_tstamp;
			ss << " delivered_segs " << this_delivered_segs
			   << " lost_segs " << this_lost_segs
			   << " sent_segs " << this_sent_segs;
			ss << " window " << window;
			ss << " delivered_rate " << (this_delivered_segs * MS_TO_SECS / window)
			   << " sent_rate " << (this_sent_segs * MS_TO_SECS / window);
			ss << " creation_sending_rate " << h->creation_sending_rate;
			next++;
		}
		log(LogLevel::DEBUG, ss.str());
		id++;
	}
}

void SlowConv::init() {
	// Time now = current_timestamp();
	genericcc_min_rtt = 0;
	genericcc_rate_measurement = 0;

	last_rate_update_time = 0;
	last_history_update_time = 0;
	last_send_history_update_time = 0;
	state = State::CONG_AVOID;

	sent_at_last_rate_update = 0;
	prev_measured_sending_rate = 0;
	expected_cum_sent = 0;

	unacknowledged_segs.clear();
	history.clear();
	send_history.clear();
	beliefs = Beliefs();

	cum_segs_sent = 0;
	cum_segs_delivered = 0;
	cum_segs_lost = 0;
	sending_rate = INIT_MIN_C;
	cwnd = MIN_CWND;

	_intersend_time = MS_TO_SECS / sending_rate;
	_the_window = cwnd;
}

void SlowConv::update_state(Time now __attribute((unused)), const SegmentData &seg __attribute((unused))) {
	// std::cout << "update_state" << std::endl;
	// std::cout << "seg.this_loss_count " << seg.this_loss_count << " threshold "
	// 		  << 2 * MIN_CWND << std::endl;

	// If two consecutive intervals witness large loss, then we switch modes.
	if (history.size() < 2) {
		return;
	}
	assert(INTER_HISTORY_TIME == 1);
	size_t last_id = history.size()-1;
	size_t second_last_id = history.size()-2;
	History &last = history[last_id];
	History &second_last = history[second_last_id];
	if (last.interval_segs_lost > 2 * MIN_CWND &&
		second_last.interval_segs_lost > 2 * MIN_CWND) {
		state = State::CONG_AVOID;
	}

	// History &h = history.back();
	// if(h.interval_segs_lost > 2 * MIN_CWND) {
	// 	state = State::CONG_AVOID;
	// }
	// if (seg.this_loss_count > 2 * MIN_CWND) {
	// 	state = State::CONG_AVOID;
	// }
}