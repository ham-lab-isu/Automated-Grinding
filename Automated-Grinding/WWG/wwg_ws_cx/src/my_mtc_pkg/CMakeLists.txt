cmake_minimum_required(VERSION 3.0.2)
project(my_mtc_pkg)

find_package(catkin REQUIRED COMPONENTS
  moveit_core
  moveit_ros_planning_interface
  pluginlib
  geometric_shapes
  roscpp
  moveit_task_constructor_core
  moveit_task_constructor_msgs
  tf2_geometry_msgs
  geometry_msgs
  rosparam_shortcuts
)

catkin_package(
  CATKIN_DEPENDS moveit_core moveit_ros_planning_interface pluginlib geometric_shapes roscpp moveit_task_constructor_core moveit_task_constructor_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${moveit_core_INCLUDE_DIRS}
  ${moveit_ros_planning_interface_INCLUDE_DIRS}
  ${moveit_task_constructor_INCLUDE_DIRS}
)

add_executable(mtc_task_node src/mtc_task_node.cpp)
target_link_libraries(mtc_task_node ${catkin_LIBRARIES})
add_dependencies(mtc_task_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
