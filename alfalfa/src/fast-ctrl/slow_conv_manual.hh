#ifndef SLOWCONVMANUAL_HH
#define SLOWCONVMANUAL_HH

#include "slow_conv.hh"

class SlowConvManual : public SlowConv {
	// https://stackoverflow.com/questions/347358/inheriting-constructors
	using SlowConv::SlowConv;  // inherit constructor

   private:
	enum SlowState { DRAIN, PROBE };

	SlowState slow_state = DRAIN;
	uint32_t probe_counter = 0;
	/**
	 * probe_counter 0 means that we need to drain. If bw is short, then we
	 * can send the first probe.
	 * probe_counter 1 means that we have sent the
	 * first probe, this is time for the second probe.
	 * if probe_counter
	 * becomes MEASUREMENT_INTERVAL_HISTORY, then we need to stop probing and
	 * start draining, and go into probe_counter 0.
	 */

   protected:
	void update_rate_cwnd_slow_conv(Time __attribute((unused))) override;
};

#endif