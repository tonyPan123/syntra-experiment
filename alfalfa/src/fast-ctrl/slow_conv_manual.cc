#include "slow_conv_manual.hh"

void SlowConvManual::update_rate_cwnd_slow_conv(Time now
												__attribute((unused))) {
	TimeDelta rtprop = beliefs.min_rtt;
	TimeDelta jitter = beliefs.min_rtt * JITTER_MULTIPLIER;

	SegsRate min_sending_rate = get_min_sending_rate();
	SegsRate probe_rate =
		((MEASUREMENT_INTERVAL_RATE_UPDATE + JITTER_MULTIPLIER) * (beliefs.min_c_lambda + min_sending_rate)) /
		MEASUREMENT_INTERVAL_RATE_UPDATE;

	if (slow_state == SlowState::DRAIN) {
		if (beliefs.bq_belief2 > 2 * MIN_CWND) {
			sending_rate = beliefs.min_c_lambda - (beliefs.bq_belief2 * MS_TO_SECS) / beliefs.min_rtt;
		} else {
			slow_state = SlowState::PROBE;
			probe_counter = 0;
		}
	}

	if (slow_state == SlowState::PROBE) {
		sending_rate = probe_rate;
		probe_counter += 1;
	}

	if (probe_counter == MEASUREMENT_INTERVAL_RATE_UPDATE) {
		slow_state = SlowState::DRAIN;
		probe_counter = 0;
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
