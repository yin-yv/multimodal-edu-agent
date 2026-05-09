#pragma once

namespace multimodal {
namespace scheduler {

class TokenBucket {
public:
    TokenBucket(size_t capacity, size_t refill_rate);
    bool tryConsume(size_t tokens);
};

} // namespace scheduler
} // namespace multimodal
