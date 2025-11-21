include(CMakeUnit)
include(set)

# Arrange
set(LocalVariable "Old value")
# ParentScopeVariable is defined in test setup

# Act
set_if_defined(LocalVariable "New value")
set_if_defined(ParentScopeVariable "New value")

# Assert
EXPECT_STREQ("${LocalVariable}" "New value")
EXPECT_STREQ("${ParentScopeVariable}" "New value")
