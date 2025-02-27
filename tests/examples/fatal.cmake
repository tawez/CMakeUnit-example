# The test will fail immediately if the message (FATAL_ERROR) is emitted.
# The remaining code will not be evaluated.

include(CMakeUnit)

# Act
FATAL("This fail will be reported")
FAIL("This fail one will not be reported")
