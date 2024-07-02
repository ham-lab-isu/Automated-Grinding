execute_process(COMMAND "/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/build/moveit_core/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/build/moveit_core/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
