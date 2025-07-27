#include <iostream>
#include <vector>
#include <thread>
#include <queue>
#include <mutex>
#include <condition_variable>
#include <functional>
#include <atomic>

#include "encoder.hh"
#include "player.hh"

struct WorkerState {
    int thread_id;
    int task_count = 0;
    Encoder encoder = Encoder{ 1280, 720,
        false /* two-pass */, REALTIME_QUALITY };
    //Decoder decoder = Decoder {1280, 720};
};

class StatefulThreadPool {
public:
    StatefulThreadPool(size_t num_threads);
    ~StatefulThreadPool();

    void enqueue(std::function<void(WorkerState&)> task);

private:
    struct Worker {
        std::thread thread;
        WorkerState state;
    };

    std::vector<Worker> workers;
    std::queue<std::function<void(WorkerState&)>> tasks;

    std::mutex queue_mutex;
    std::condition_variable condition;
    std::atomic<bool> stop;
};

StatefulThreadPool::StatefulThreadPool(size_t num_threads) : stop(false) {
    for (size_t i = 0; i < num_threads; ++i) {
        workers.emplace_back();
        workers[i].state.thread_id = i;

        workers[i].thread = std::thread([this, i]() {
            WorkerState& state = this->workers[i].state;

            while (true) {
                std::function<void(WorkerState&)> task;

                {
                    std::unique_lock<std::mutex> lock(this->queue_mutex);
                    this->condition.wait(lock, [this]() {
                        return this->stop || !this->tasks.empty();
                    });

                    if (this->stop && this->tasks.empty())
                        return;

                    task = std::move(this->tasks.front());
                    this->tasks.pop();
                }

                task(state);
                state.task_count++;
            }
        });
    }
}

void StatefulThreadPool::enqueue(std::function<void(WorkerState&)> task) {
    {
        std::lock_guard<std::mutex> lock(queue_mutex);
        tasks.push(std::move(task));
    }
    condition.notify_one();
}

StatefulThreadPool::~StatefulThreadPool() {
    stop = true;
    condition.notify_all();
    for (auto& w : workers)
        w.thread.join();
}
