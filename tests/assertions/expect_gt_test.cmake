include(CMakeUnit)

# Arrange
set(var1 1)
set(var2 var1)
set(var3 2)

# Assert
EXPECT_GT(2 1)
EXPECT_GT(${var3} 1)
EXPECT_GT(${var3} ${${var2}})
