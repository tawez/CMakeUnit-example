include(CMakeUnit)

# Arrange
set(var1 Ala)
set(var2 Makota)
set(var3 var2)

# Assert
EXPECT_STREQ(${var1} Ala)
EXPECT_STREQ(${var2} Makota)
EXPECT_STREQ("${var1} ${var2}" "Ala Makota")
EXPECT_STREQ(${${var3}} ${var2})
