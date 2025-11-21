# The test will fail if the SEND_ERROR or FATAL_ERROR message is emitted.

include(CMakeUnit)

function(failing_function message)
    FAIL("This function will fail ${message}")
endfunction()


# Act
FAIL("This test will fail")
FAIL("for many reasons")
failing_function("by design")
