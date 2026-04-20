# Define minimal required version of CMake.
cmake_minimum_required(VERSION "3.25")

# Project definition
project(
	sl_si91x_i2c_driver_leader
	VERSION 1.0
	LANGUAGES C CXX ASM
)

# Include the definition of the slc_sl_si91x_i2c_driver_leader target,
# which contains the content of the SLC project
include(sl_si91x_i2c_driver_leader.cmake)

add_executable(sl_si91x_i2c_driver_leader
    # Add additional sources here
)

target_include_directories(sl_si91x_i2c_driver_leader PUBLIC
    # Add additional include paths here
)

target_compile_definitions(sl_si91x_i2c_driver_leader PUBLIC
    # Add additional macros here
)

target_compile_options(sl_si91x_i2c_driver_leader PUBLIC
    # Set additional compiler flags here
)

target_link_options(sl_si91x_i2c_driver_leader PUBLIC
    # Set additional linker flags here
)

# Link with the content defined in the SLC project
target_link_libraries(sl_si91x_i2c_driver_leader PRIVATE
    slc
)

# Include managed project content if available
include(sl_si91x_i2c_driver_leader_project.cmake OPTIONAL RESULT_VARIABLE managed_project)
if(managed_project)
    message(STATUS "Using managed project content from ${managed_project}")
endif()

# Force the gcc linker command
set_target_properties(sl_si91x_i2c_driver_leader PROPERTIES LINKER_LANGUAGE C)

# Create .bin, .hex and .s37 artifacts after building the project
add_custom_command(TARGET sl_si91x_i2c_driver_leader
    POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} ${OBJCOPY_SREC_CMD} "$<TARGET_FILE:sl_si91x_i2c_driver_leader>" "$<TARGET_FILE_DIR:sl_si91x_i2c_driver_leader>/$<TARGET_FILE_BASE_NAME:sl_si91x_i2c_driver_leader>.s37"
    COMMAND ${CMAKE_OBJCOPY} ${OBJCOPY_IHEX_CMD} "$<TARGET_FILE:sl_si91x_i2c_driver_leader>" "$<TARGET_FILE_DIR:sl_si91x_i2c_driver_leader>/$<TARGET_FILE_BASE_NAME:sl_si91x_i2c_driver_leader>.hex"
    COMMAND ${CMAKE_OBJCOPY} ${OBJCOPY_BIN_CMD}  "$<TARGET_FILE:sl_si91x_i2c_driver_leader>" "$<TARGET_FILE_DIR:sl_si91x_i2c_driver_leader>/$<TARGET_FILE_BASE_NAME:sl_si91x_i2c_driver_leader>.bin" 
)

# Run post-build pipeline to perform additional post-processing
if(post_build_command)
add_custom_command(TARGET sl_si91x_i2c_driver_leader
    POST_BUILD
    WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/..
    COMMAND ${post_build_command}
)
endif()