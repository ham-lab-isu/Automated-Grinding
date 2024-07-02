# Install script for directory: /home/wglockner/ws_moveit/src/moveit/moveit_ros/visualization/rviz_plugin_render_tools

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wglockner/ws_moveit/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wglockner/ws_moveit/src/moveit/moveit_ros/visualization/rviz_plugin_render_tools/include/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so.1.1.14" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so.1.1.14")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so.1.1.14"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wglockner/ws_moveit/devel/.private/moveit_ros_visualization/lib/libmoveit_rviz_plugin_render_tools.so.1.1.14")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so.1.1.14" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so.1.1.14")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so.1.1.14"
         OLD_RPATH "/home/wglockner/ws_moveit/devel/.private/moveit_ros_perception/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_planning_interface/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_manipulation/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_move_group/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_robot_interaction/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_warehouse/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_planning/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/wglockner/ws_moveit/devel/.private/moveit_core/lib:/home/wglockner/ws_moveit/devel/.private/srdfdom/lib:/home/wglockner/ws_moveit/devel/.private/geometric_shapes/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so.1.1.14")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wglockner/ws_moveit/devel/.private/moveit_ros_visualization/lib/libmoveit_rviz_plugin_render_tools.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so"
         OLD_RPATH "/home/wglockner/ws_moveit/devel/.private/moveit_ros_perception/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_planning_interface/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_manipulation/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_move_group/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_robot_interaction/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_warehouse/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_planning/lib:/home/wglockner/ws_moveit/devel/.private/moveit_ros_occupancy_map_monitor/lib:/home/wglockner/ws_moveit/devel/.private/moveit_core/lib:/home/wglockner/ws_moveit/devel/.private/srdfdom/lib:/home/wglockner/ws_moveit/devel/.private/geometric_shapes/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoveit_rviz_plugin_render_tools.so")
    endif()
  endif()
endif()
