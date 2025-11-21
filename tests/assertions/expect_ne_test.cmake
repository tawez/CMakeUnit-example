include(CMakeUnit)

# Arrange
set(var1 1)
set(var2 var1)
set(var3 2)

# Assert
EXPECT_NE(1 2)
EXPECT_NE(${var1} 2)
EXPECT_NE(${${var2}} ${var3})
