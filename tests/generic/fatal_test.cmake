# The test will fail immediately if the FATAL_ERROR message is emitted.
# The remaining code will not be evaluated.

include(CMakeUnit)

# Act
FAIL("This fail will be reported")
FATAL("This is the last one to be reported")
FAIL("This one will not be reported")
