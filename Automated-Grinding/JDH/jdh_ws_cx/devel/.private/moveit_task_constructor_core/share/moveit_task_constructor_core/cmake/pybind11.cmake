# pybind11 must use the ROS python version
set(PYBIND11_PYTHON_VERSION ${PYTHON_VERSION_STRING})

if(FALSE)
	include(${CMAKE_CURRENT_LIST_DIR}/pybind11Config.cmake)
else()
	# in build space, directly include pybind11 directory
	add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../pybind11 ${CMAKE_CURRENT_BINARY_DIR}/pybind11)
endif()
