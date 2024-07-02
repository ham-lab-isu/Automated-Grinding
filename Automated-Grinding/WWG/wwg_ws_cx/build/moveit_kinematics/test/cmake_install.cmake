# Install script for directory: /home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/src/ws_moveit/src/moveit/moveit_kinematics/test

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/install")
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_kinematics/benchmark_ik" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_kinematics/benchmark_ik")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_kinematics/benchmark_ik"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/moveit_kinematics" TYPE EXECUTABLE FILES "/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/devel/.private/moveit_kinematics/lib/moveit_kinematics/benchmark_ik")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_kinematics/benchmark_ik" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_kinematics/benchmark_ik")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_kinematics/benchmark_ik"
         OLD_RPATH "/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/build/moveit_kinematics/gtest:/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/devel/.private/moveit_core/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/devel/.private/geometric_shapes/lib:/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/devel/.private/srdfdom/lib:/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/devel/.private/moveit_ros_planning/lib:/home/wglockner/Automated-Grinding/Automated-Grinding/WWG/wwg_ws_cx/devel/.private/moveit_ros_occupancy_map_monitor/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/moveit_kinematics/benchmark_ik")
    endif()
  endif()
endif()

