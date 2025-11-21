# Generic examples of various test types

add_cmake_test(
    "This test will pass"
    will_pass_test.cmake
)

add_cmake_test(
    "This test will be skipped"
    will_pass_test.cmake
    SKIP
)

add_cmake_test(
    "This test will fail"
    will_fail_test.cmake
)

# Some tests are expected to fail
add_cmake_test(
    "This test should fail"
    will_fail_test.cmake
    WILL_FAIL
)

add_cmake_test(
    "This test will fail immediately"
    fatal_test.cmake
)

add_cmake_test(
    "This test is expected to pass only with the valid env configuration"
    env_setup_test.cmake
    OPTIONS
        "-DEnvVariable:STRING=Valid value"
)

add_cmake_test(
    "This test will fail because of invalid env configuration"
    env_setup_test.cmake
    OPTIONS
        "-DEnvVariable:STRING=Invalid value"
)
