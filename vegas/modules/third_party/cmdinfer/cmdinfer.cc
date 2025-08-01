#include "cmdinfer.h"

#include "modules/third_party/statcollect/json.hpp"

#include <iostream>
#include <algorithm>

const char * RequestBandwidthCommand = "RequestBandwidth";

static int rtt = 50; // one-sided
static double cwnd = 1;
static std::uint64_t min_rl_rtt = -1;
//static std::uint64_t latest_rl_rtt = -1;
static bool initialized = false;
//static std::uint64_t latest_send_timestamp;
//static std::uint64_t latest_arrival_timestamp;

void cmdinfer::ReportStates(
    std::uint64_t sendTimeMs,
    std::uint64_t receiveTimeMs,
    std::size_t payloadSize,
    std::uint8_t payloadType,
    std::uint16_t sequenceNumber,
    std::uint32_t ssrc,
    std::size_t paddingLength,
    std::size_t headerLength) {

    nlohmann::json j;
    j["send_time_ms"] = sendTimeMs;
    j["arrival_time_ms"] = receiveTimeMs;
    j["payload_type"] = payloadType;
    j["sequence_number"] = sequenceNumber;
    j["ssrc"] = ssrc;
    j["padding_length"] = paddingLength;
    j["header_length"] = headerLength;
    j["payload_size"] = payloadSize;

    if (initialized) {
        //std::cout << "Send: " << sendTimeMs << std::endl;
        //std::cout << "Arrival: " << receiveTimeMs << std::endl;
        std::uint64_t rel_rtt = receiveTimeMs - sendTimeMs;
        min_rl_rtt = std::min(min_rl_rtt, rel_rtt);
        //std::cout << "Send: " << rel_rtt << std::endl;
        //std::cout << "Arrival: " << min_rl_rtt << std::endl;
        if ((rel_rtt - min_rl_rtt) <= 10) {
            cwnd += 5.0 / (double)payloadSize;
        } else {
            cwnd -= 5.0 / (double)payloadSize;
        }
        cwnd = std::max(1.0, cwnd);
        //latest_rtt = rtt;
        //latest_send_timestamp = sendTimeMs;
        //latest_arrival_timestamp = receiveTimeMs;
    } else {
        //cwnd += 1;
        //latest_rl_rtt = receiveTimeMs - sendTimeMs;
        min_rl_rtt = receiveTimeMs - sendTimeMs;
        initialized = true;
        //latest_send_timestamp = sendTimeMs;
        //latest_arrival_timestamp = receiveTimeMs;
    }
    //std::cout << "min_rtt is: " << min_rtt << std::endl;
    std::cout << "cwnd is: " << cwnd << std::endl;
    //std::cout << "latest_rtt is: " << latest_rtt << std::endl;
    //std::cout << j.dump() << std::endl;
}

float cmdinfer::GetEstimatedBandwidth() {
    std::uint64_t bandwidth = 1400 * 1000 * cwnd / rtt;
    std::cout << "Latest BWE is: " << bandwidth << std::endl;
    return static_cast<float>(bandwidth);
}
