include(CMakeUnit)
include(set)

# Act
set_if_defined(NewVariable "New value")

# Assert
EXPECT_UNDEFINED(NewVariable)
