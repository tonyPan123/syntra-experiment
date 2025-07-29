

#ifndef CONG_CTRL_HH
#define CONG_CTRL_HH

#include <iostream>
#include <boost/circular_buffer.hpp>
#include <vector>

typedef double Time;		  // ms (cumulative)
typedef double TimeDelta;		  // ms (cumulative)
typedef int SeqNum;		  // Pkts
typedef double SegsRate;	  // Pkts per rtprop
typedef int Step;

using namespace std;

struct ExternalLoss {
    int t;
    double l;
};

struct ExternalHistory {
    double a;
    double s;
    const ExternalLoss* lo;
    int length;
};

struct ExternalBeliefBound {
    double min_c;
    double max_c;
    double min_b;
    double max_b;
    double min_q;
    double max_q;
    double rate;
};

extern "C" {
    //From_Rust rust_function(From_Rust*);
    //struct ExternalBeliefBound compute_belief_bounds_c_test();
    //struct ExternalBeliefBound compute_belief_bounds_c(const ExternalHistory*, int);
    void compute_belief_bounds_c(const ExternalHistory*, int, ExternalBeliefBound*);
    
    
}

class CongCtrl
{
    SeqNum loss_risk = 2;
    enum Action { Probe, Drain }; 

    public:
        // Important constant used in simulation
        static constexpr int HISTORY_SIZE = 7;
        static constexpr Time MAX_DELAY = 50; // 1000ms initially
        static constexpr SegsRate MIN_BANDWIDTH = 5; 
        static constexpr SegsRate MAX_BANDWIDTH = 1000;
        static constexpr SeqNum MIN_BUFFER = 5;
        static constexpr SeqNum MAX_BUFFER = 1000;
        static constexpr TimeDelta MILLI_TO_MICRO = 1e3;
        static constexpr double scaling = 5;

        // Entry to be filled into rust repo
        struct Loss {
            Step ago;
            SeqNum creation_cum_lost_segs;
            //bool complete;
        };


        struct History {
            Time min_rtt;

            SeqNum creation_cum_sent_segs;
		    SeqNum creation_cum_delivered_segs;
            SeqNum creation_cum_loss_segs;
		    std::vector<Loss> loss;

            void print_out() {
                cout << "Sent: " << creation_cum_sent_segs << endl;
                cout << "Ack: " << creation_cum_delivered_segs << endl;
                for (int i = 0; i < (int)loss.size();i++) {
                    cout << "Time ago: " << loss[i].ago << " lost" << loss[i].creation_cum_lost_segs << endl;
                }
            }

        };

        // Result from the rust repo
        struct BeliefBound {

            Time min_rtt;
            //Time next_min_rtt; // min_rtt potentially updated during the current belief

		    SegsRate min_c;
		    SegsRate max_c;

            SeqNum min_b;
		    SeqNum max_b;

            SeqNum min_q;
		    SeqNum max_q;

            BeliefBound() // change to query rust repo
                : min_rtt(MAX_DELAY), 
                  //next_min_rtt(MAX_DELAY), 
                  min_c(MIN_BANDWIDTH),
                  max_c(MAX_BANDWIDTH),
                  min_b(MIN_BUFFER),
                  max_b(MAX_BUFFER),
                  min_q(0),
                  max_q(0) {  
            }

        };

        boost::circular_buffer<History> history; // current history

        BeliefBound beliefs; // current belief bound

	    SeqNum cum_segs_sent;
	    SeqNum cum_segs_delivered;
	    SeqNum cum_segs_lost;
        vector<Loss> cum_segs_loss_vector;
        Step focus;

        SegsRate no_loss_rate;

        vector<SeqNum> buffered_ack;
        vector<Time> buffered_rtt;

        int counter;
        int probe_period;

    public:
        CongCtrl(int probe_period = 20) : 
            history(HISTORY_SIZE),
            beliefs(BeliefBound()), 
            cum_segs_sent(0),  
            cum_segs_delivered(0),
            cum_segs_lost(0),
            cum_segs_loss_vector({{0, 0}}),
            focus(-1), 
            no_loss_rate(0), 
            buffered_ack({}),
            buffered_rtt({}), 
            counter(0), 
            probe_period(probe_period)
            {
                for (int i = 0; i < (HISTORY_SIZE); i++) {
                    Loss loss = {0, 0};
                    std::vector<Loss> losses = {loss};
                    history.push_back( {MAX_DELAY, 0, 0, 0, losses} );
                }
                updateBeliefBound();
        }

        ~CongCtrl() {}

        void onSent();

        void onACK(SeqNum ack, Time rtt);

        SeqNum get_cca_action();

        SeqNum get_max_allowed_ack() {
            return history[HISTORY_SIZE - 1].creation_cum_sent_segs;
        }

        TimeDelta get_action_intertime() { return beliefs.min_rtt; } // milli seconds

        void updateHistory() {
            // Vector copied by value
            if (cum_segs_loss_vector.size() == 0) {
                Loss latest_ob_loss(history.back().loss.back());
                latest_ob_loss.ago += 1;
                history.push_back(History{beliefs.min_rtt, cum_segs_sent, cum_segs_delivered, cum_segs_lost, {latest_ob_loss}});
            } else {
                history.push_back(History{beliefs.min_rtt, cum_segs_sent, cum_segs_delivered, cum_segs_lost, cum_segs_loss_vector});
            }

            focus += 1;
            cum_segs_loss_vector = {};
            // Account for sending zero pkts in the last RTT
            if ((cum_segs_lost + cum_segs_delivered) >= cum_segs_sent) {
                cum_segs_loss_vector.push_back(Loss{0, cum_segs_lost});
                assert(focus == 0);
                focus = -1;
            }

            for (int i = 0; i < (int)buffered_ack.size(); i++) {
                onACK(buffered_ack[i], buffered_rtt[i]);
            }
            buffered_ack = {};
            buffered_rtt = {};
        }

        void updateBeliefBound() {
            // Prepare for the argument
            //for (auto & history_entry : history) {
            //    history_entry.print_out();
            //}
            //cout << "Print out History" << endl;
            ExternalHistory historys[HISTORY_SIZE];
            ExternalLoss lossess[HISTORY_SIZE][HISTORY_SIZE * 100];
            for (int i = 0; i < HISTORY_SIZE; i++) {
                History ob = history[i];
                //ob.print_out();
                for (int j = 0; j < (int)ob.loss.size(); j++) {
                    lossess[i][j].t = ob.loss.at(j).ago;
                    lossess[i][j].l = ob.loss.at(j).creation_cum_lost_segs * scaling;
                }
                historys[i].a = (double)ob.creation_cum_sent_segs * scaling;
                historys[i].s = (double)ob.creation_cum_delivered_segs * scaling;
                historys[i].lo = &(lossess[i][0]);
                historys[i].length = (int)ob.loss.size();
            } 

            // Query the rust static library
            ExternalBeliefBound bb;
            //cout << HISTORY_SIZE << endl;
            compute_belief_bounds_c(&historys[0], HISTORY_SIZE, &bb);
            //std::cout << "New max allowed rate is: " << bb.rate << std::endl;
            // Update the belief bound
            beliefs.min_c = bb.min_c / scaling;
            //beliefs.max_c = bb.max_c;
            beliefs.min_b = bb.min_b / scaling;
            beliefs.max_b = bb.max_b / scaling;
            beliefs.min_q = bb.min_q / scaling;
            beliefs.max_q = bb.max_q / scaling;
            //beliefs.max_q = std::min(beliefs.max_q + history[HISTORY_SIZE - 1].creation_cum_sent_segs - history[HISTORY_SIZE - 2].creation_cum_sent_segs - bb.min_c / scaling, bb.max_q / scaling);
            //beliefs.max_q = std::max(beliefs.max_q, 0);
            no_loss_rate = bb.rate / scaling;
            // max_c should last longer for low latency 
            if (bb.max_c < MAX_BANDWIDTH) {
                // Converging should happen at least for 1s
                beliefs.max_c = bb.max_c / scaling;
                counter = probe_period;
            }
            if (counter == 0) {
                beliefs.max_c = bb.max_c / scaling;
            } else {
                counter -= 1;
            }
            std::cout << "New C is: " <<" "<< beliefs.min_c <<  " " << beliefs.max_c << std::endl;
            std::cout << "New B is: " <<" "<< beliefs.min_b <<  " " << beliefs.max_b << std::endl;
            std::cout << "New Q is: " <<" "<< beliefs.min_q <<  " " << beliefs.max_q << std::endl;
            std::cout << "New no loss rate is: " <<" " << bb.rate / 5 << std::endl;

        }

        bool converged() {
            return beliefs.max_c < MAX_BANDWIDTH / scaling;
        }
};

#endif