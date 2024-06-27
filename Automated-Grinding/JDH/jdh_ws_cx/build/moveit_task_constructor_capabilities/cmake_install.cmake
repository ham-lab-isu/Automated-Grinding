# Install script for directory: /home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/src/moveit_task_constructor/capabilities

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install" TYPE PROGRAM FILES "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install" TYPE PROGRAM FILES "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install/setup.bash;/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install" TYPE FILE FILES
    "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/setup.bash"
    "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install/setup.sh;/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install" TYPE FILE FILES
    "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/setup.sh"
    "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install/setup.zsh;/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install" TYPE FILE FILES
    "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/setup.zsh"
    "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/install" TYPE FILE FILES "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/moveit_task_constructor_capabilities.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_task_constructor_capabilities/cmake" TYPE FILE FILES
    "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/moveit_task_constructor_capabilitiesConfig.cmake"
    "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/catkin_generated/installspace/moveit_task_constructor_capabilitiesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_task_constructor_capabilities" TYPE FILE FILES "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/src/moveit_task_constructor/capabilities/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_task_constructor_capabilities.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_task_constructor_capabilities.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_task_constructor_capabilities.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/devel/.private/moveit_task_constructor_capabilities/lib/libmoveit_task_constructor_capabilities.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_task_constructor_capabilities.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_task_constructor_capabilities.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_task_constructor_capabilities.so"
         OLD_RPATH "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/devel/.private/moveit_task_constructor_core/lib:/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/devel/.private/rviz_marker_tools/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_task_constructor_capabilities.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_task_constructor_capabilities" TYPE FILE FILES "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/src/moveit_task_constructor/capabilities/capabilities_plugin_description.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/gtest/cmake_install.cmake")
  include("/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/pybind11/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/moveit_task_constructor_capabilities/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
