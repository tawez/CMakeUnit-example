include(CMakeUnit)

# Arrange
set(var1 Ala)
set(var2 Makota)
set(var3 var2)

# Assert
EXPECT_NOT_STREQ(${var1} Makota)
EXPECT_NOT_STREQ(${var2} Ala)
EXPECT_NOT_STREQ("${var1} ${var2}" "Makota Ala")
EXPECT_NOT_STREQ(${${var3}} ${var1})
