# CMake generated Testfile for 
# Source directory: /home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/src/khi_rs020n_moveit_config
# Build directory: /home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/khi_rs020n_moveit_config
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_khi_rs020n_moveit_config_roslaunch-check_tests_roslaunch_test_moveit_rs020n.xml "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/khi_rs020n_moveit_config/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/khi_rs020n_moveit_config/test_results/khi_rs020n_moveit_config/roslaunch-check_tests_roslaunch_test_moveit_rs020n.xml.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/khi_rs020n_moveit_config/test_results/khi_rs020n_moveit_config" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/build/khi_rs020n_moveit_config/test_results/khi_rs020n_moveit_config/roslaunch-check_tests_roslaunch_test_moveit_rs020n.xml.xml\" \"/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/src/khi_rs020n_moveit_config/tests/roslaunch_test_moveit_rs020n.xml\" ")
set_tests_properties(_ctest_khi_rs020n_moveit_config_roslaunch-check_tests_roslaunch_test_moveit_rs020n.xml PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/src/khi_rs020n_moveit_config/CMakeLists.txt;10;roslaunch_add_file_check;/home/wglockner/Automated-Grinding/Automated-Grinding/JDH/jdh_ws_cx/src/khi_rs020n_moveit_config/CMakeLists.txt;0;")
subdirs("gtest")
