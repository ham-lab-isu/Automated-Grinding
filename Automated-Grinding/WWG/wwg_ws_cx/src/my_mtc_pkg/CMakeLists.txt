cmake_minimum_required(VERSION 3.0.2)
project(my_mtc_pkg)

find_package(catkin REQUIRED COMPONENTS
  moveit_core
  moveit_ros_planning_interface
  pluginlib
  geometric_shapes
  roscpp
  moveit_task_constructor_core
  tf2_geometry_msgs
  geometry_msgs
  rosparam_shortcuts
)

catkin_package(
  CATKIN_DEPENDS moveit_core moveit_ros_planning_interface pluginlib geometric_shapes roscpp moveit_task_constructor_core
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(task_constructor_demo src/task_constructor_demo.cpp)
target_link_libraries(task_constructor_demo ${catkin_LIBRARIES})

