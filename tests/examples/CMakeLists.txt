# {{{ Generic examples showing how to setup tests
add_cmake_test(
    "This test will pass"
    will_pass.cmake
)

add_cmake_test(
    "This test will be skipped"
    will_pass.cmake
    SKIP
)

add_cmake_test(
    "This test will fail"
    will_fail.cmake
)

add_cmake_test(
    "This test will fail immediately"
    fatal.cmake
)

# Some tests are expected to fail
add_cmake_test(
    "This test should fail"
    will_fail.cmake
    WILL_FAIL
)

add_cmake_test(
    "This test is expected to pass on valid env configuration"
    env_setup.cmake
    OPTIONS
        "-DEnvVariable:STRING=Valid value"
)

add_cmake_test(
    "This test is expected to fail on invalid env configuration"
    env_setup.cmake
    WILL_FAIL
    OPTIONS
        "-DEnvVariable:STRING=Invalid value"
)
# }}} Generic examples showing how to setup tests


# {{{ Generic examples how to use assertions
add_cmake_test(
    "EXPECT_TRUE examples"
    expect_true.cmake
)

add_cmake_test(
    "EXPECT_FALSE examples"
    expect_false.cmake
)

add_cmake_test(
    "EXPECT_DEFINED examples"
    expect_defined.cmake
)

add_cmake_test(
    "EXPECT_UNDEFINED examples"
    expect_undefined.cmake
)

add_cmake_test(
    "EXPECT_STREQ examples"
    expect_streq.cmake
)

add_cmake_test(
    "EXPECT_NOT_STREQ examples"
    expect_not_streq.cmake
)

add_cmake_test(
    "EXPECT_MATCH examples"
    expect_match.cmake
)

add_cmake_test(
    "EXPECT_NOT_MATCH examples"
    expect_not_match.cmake
)
# }}} Generic examples how to use assertions


add_cmake_test(
    "Test module"
    sample_test_structure.cmake
)
