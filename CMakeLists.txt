cmake_minimum_required(VERSION 3.8)
project(fzf_ros2)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)

ament_environment_hooks("${CMAKE_CURRENT_SOURCE_DIR}/hooks/fzf_functions.dsv.in")

install(
  PROGRAMS
    functions/fzf_with_ros2_action_functions.bash
    functions/fzf_with_ros2_interface_functions.bash
    functions/fzf_with_ros2_node_functions.bash
    functions/fzf_with_ros2_param_functions.bash
    functions/fzf_with_ros2_service_functions.bash
    functions/fzf_with_ros2_topic_functions.bash
    functions/fzf_with_ros2_other_functions.bash
  DESTINATION
    "share/${PROJECT_NAME}/environment"
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
