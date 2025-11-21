include(CMakeUnit)

# Arrange
set(var1 1)
set(var2 var1)
set(var3 2)

# Assert
EXPECT_GE(2 1)
EXPECT_GE(2 2)
EXPECT_GE(${var3} 1)
EXPECT_GE(${var3} ${var1})
EXPECT_GE(${var3} ${${var2}})
EXPECT_GE(${var3} 2)
