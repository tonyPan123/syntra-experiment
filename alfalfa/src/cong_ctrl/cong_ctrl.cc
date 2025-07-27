#include "cong_ctrl.hh"


void CongCtrl::onSent() {
    cum_segs_sent += 1;
}

// How to handle with pkts reordering?
void CongCtrl::onACK(SeqNum ack, Time rtt) {
    if (ack > get_max_allowed_ack()) {
        // It will be handled later after update_histroy()
        buffered_ack.push_back(ack);
        buffered_rtt.push_back(rtt);
        return;
    }
    // TODO: add case for handling focus == -1
    assert(focus <= (HISTORY_SIZE - 1));
    assert(focus >= 0);
    // Assume ack start from 1
    // Reordering regarded as lost
    if (ack > (cum_segs_delivered + cum_segs_lost)) {
        // TODO: Allow reordering within one time step???
        cum_segs_delivered += 1;
        cum_segs_lost = ack - cum_segs_delivered;

        while (focus >= 0) {
            History & focus_history = history[HISTORY_SIZE - 1 - focus];
            if (ack >= focus_history.creation_cum_sent_segs) {
                // Loss at {focus} time ago is completely observed 
                if (ack == focus_history.creation_cum_sent_segs) {
                    cum_segs_loss_vector.push_back(Loss{focus, focus_history.creation_cum_sent_segs - cum_segs_delivered});
                } else {
                    cum_segs_loss_vector.push_back(Loss{focus, focus_history.creation_cum_sent_segs - cum_segs_delivered + 1});
                }
                focus -= 1;
            } else {
                break;
            }
        }
    }
    // Update min_rtt
    beliefs.min_rtt = std::min(beliefs.min_rtt, rtt);
    //std::cout << "New rtt is " << beliefs.min_rtt << std::endl;

    return;
}

SeqNum CongCtrl::get_cca_action() {
    if (beliefs.max_q >= 1) {
        return std::max(0, (int)(beliefs.min_c - beliefs.max_q));
    } else {
        return no_loss_rate + loss_risk;
    }
}

