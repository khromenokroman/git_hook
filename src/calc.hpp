#pragma once

namespace tools::calculator {
class Calculator {
   public:
    Calculator() = default;
    ~Calculator() = default;

    Calculator(Calculator const&) = delete;
    Calculator& operator=(Calculator const&) = delete;
    Calculator(Calculator&&) = delete;
    Calculator& operator=(Calculator&&) = delete;

    template <typename T>
    static T add(T a, T b) {
        return a + b;
    }
    template <typename T>
    static T mul(T a, T b) {
        return a * b;
    }
};
} // namespace tools::calculator