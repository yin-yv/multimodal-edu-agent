#pragma once

namespace multimodal {
namespace utils {

class Logger {
public:
    static void info(const char* msg);
    static void error(const char* msg);
};

} // namespace utils
} // namespace multimodal
