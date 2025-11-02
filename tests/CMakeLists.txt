set(TEST_NAME tests)
find_package(fmt REQUIRED)
find_package(GTest REQUIRED)

include(GoogleTest)

add_executable(${TEST_NAME}
        tests.cpp
)

target_link_libraries(${TEST_NAME} PRIVATE
        fmt::fmt
        GTest::gtest
        GTest::gmock_main
)

target_include_directories(${TEST_NAME} PRIVATE
        ${PROJECT_SOURCE_DIR}/src
)

if (TEST_XML_REPORT_ENABLE)
    gtest_add_tests(TARGET ${TEST_NAME} EXTRA_ARGS "--gtest_output=xml:${CMAKE_BINARY_DIR}/test_report.xml")
else ()
    gtest_add_tests(TARGET ${TEST_NAME})
endif ()
