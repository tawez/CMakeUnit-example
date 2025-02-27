# The test will fail if the message (SEND_ERROR) or (FATAL_ERROR) is emitted at least once

include(CMakeUnit)

function(failing_function message)
    message(SEND_ERROR "This function will fail ${message}")
endfunction()


# Act
FAIL("This test will fail")
FAIL("for many reasons")
failing_function("by design")
