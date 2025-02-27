# Set variable only if it is not defined
# Params:
#   - variable  variable name
#   - value     value to be set
macro(set_if_undefined variable value)
    if (NOT DEFINED ${variable})
        set(${variable} "${value}" ${ARGN})
    endif ()
endmacro()


# Set variable only if it is defined
# Params:
#   - variable  variable name
#   - value     value to be set
macro(set_if_defined variable value)
    if (DEFINED ${variable})
        set(${variable} "${value}" ${ARGN})
    endif ()
endmacro()
