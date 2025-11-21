include(CMakeUnit)

# Arrange
set(var1 1)
set(var2 var1)

# Assert
EXPECT_EQ(1 1)
EXPECT_EQ(1 ${var1})
EXPECT_EQ(${var1} ${${var2}})
