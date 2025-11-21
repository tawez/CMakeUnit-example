include(CMakeUnit)

# Arrange
set(var1 1)
set(var2 var1)
set(var3 2)

# Assert
EXPECT_LT(1 2)
EXPECT_LT(${var1} 2)
EXPECT_LT(${${var2}} ${var3})
