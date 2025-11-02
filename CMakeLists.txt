cmake_minimum_required(VERSION 3.15)

project(git_hook
        VERSION 0.0.1.0
        LANGUAGES CXX
        DESCRIPTION "Very simple calculator"
        HOMEPAGE_URL "https://github.com/khromenokroman/git_hook"
)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(src)
add_subdirectory(tests)

