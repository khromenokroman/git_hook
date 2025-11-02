set(APP_NAME test_app)
find_package(fmt REQUIRED)

add_executable(${APP_NAME} main.cpp)

target_link_libraries(${APP_NAME} PRIVATE fmt::fmt)

