# The test will pass if neither the SEND_ERROR nor the FATAL_ERROR message is emitted

message("This is message")
message(STATUS "This is status message")
message(WARNING "This is warning message")
