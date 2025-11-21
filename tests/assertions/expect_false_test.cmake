include(CMakeUnit)

# Arrange
set(var1 OFF)
set(var2 0)
set(var3 var2)

# Assert
EXPECT_FALSE(false)
EXPECT_FALSE(OFF)
EXPECT_FALSE(${var1})
EXPECT_FALSE(${var2})
EXPECT_FALSE(${${var3}})
