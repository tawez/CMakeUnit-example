include(CMakeUnit)

# Arrange
set(var2 var1)

# Assert
EXPECT_UNDEFINED(var1)
EXPECT_UNDEFINED(${var2})
