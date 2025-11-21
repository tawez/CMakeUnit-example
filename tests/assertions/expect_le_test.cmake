include(CMakeUnit)

# Arrange
set(var1 1)
set(var2 var1)
set(var3 2)

# Assert
EXPECT_LE(1 1)
EXPECT_LE(1 2)
EXPECT_LE(${var1} 1)
EXPECT_LE(${var1} 2)
EXPECT_LE(${${var2}} ${var1})
EXPECT_LE(${${var2}} ${var3})
