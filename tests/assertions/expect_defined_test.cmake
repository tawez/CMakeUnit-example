include(CMakeUnit)

# Arrange
set(var1 ON)
set(var2 var1)

# Assert
EXPECT_DEFINED(var1)
EXPECT_DEFINED(var2)
EXPECT_DEFINED(${var2})
