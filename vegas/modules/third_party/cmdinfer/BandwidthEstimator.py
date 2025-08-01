class Estimator(object):
    # Vegas Implementation
    def __init__(self):
        self.min_rtt = 1e6
        self.cwnd = 10
        self.latest_rtt = 1

    def report_states(self, stats: dict):
        '''
        stats is a dict with the following items
        {
            "send_time_ms": uint,
            "arrival_time_ms": uint,
            "payload_type": int,
            "sequence_number": uint,
            "ssrc": int,
            "padding_length": uint,
            "header_length": uint,
            "payload_size": uint
        }
        '''

        rtt = stats["arrival_time_ms"] - stats["send_time_ms"]
        self.min_rtt = min(self.min_rtt, rtt)
        if self.cwnd / rtt < 10 / (rtt - self.min_rtt):
            self.cwnd += 1 / stats["payload_size"]
        else:
            self.cwnd -= 1 / stats["payload_size"]
        self.latest_rtt = rtt

    def get_estimated_bandwidth(self)->int:
        return int(1400 * 1000 * self.cwnd / self.latest_rtt)
