include(CMakeUnit)                          # Include CMakeUnit module
include(foo)                                # Include module under test

# Arrange                                   # Arrange test
set(myVar "my value")

# Act                                       # Perform some actions
foo(myVar)

# Assert                                    # Evaluate
EXPECT_STREQ("${myVar}" "${foo-myVar}")
