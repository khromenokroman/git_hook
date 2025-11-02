#include <fmt/format.h>

#include "calc.hpp"

int main() {
    ::fmt::print("Hello, I'm calculator!\n");

    ::fmt::print("add(5, 2) = {}\n", ::tools::calculator::Calculator::add(5, 2));
    ::fmt::print("mul(5, 2) = {}\n", ::tools::calculator::Calculator::mul(5, 2));

    return 0;
}
