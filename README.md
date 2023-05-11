# fzf_ros2

This package is intended to improve the convenience of the ROS 2 CLI using FZF.

## Usage

```bash
$ r2ti # ros2 topic info with fzf
```

## Commands

### ROS 2

+ `r2tb` -> `ros2 topic bw`
+ `r2te` -> `ros2 topic echo`
+ `r2th` -> `ros2 topic hz`
+ `r2ti` -> `ros2 topic info`
+ `r2tt` -> `ros2 topic type`
+ `r2pd` -> `ros2 param dump`
+ `r2st` -> `ros2 service type`
+ `r2ni` -> `ros2 node info`
+ `r2ai` -> `ros2 action info`
+ `r2is` -> `ros2 interface show`
+ `r2cd` -> Go to colcon package under the current directory

### GZ

+ `gzti` -> `gz topic --info`
+ `gzte` -> `gz topic --echo`
+ `gzsi` -> `gz service --info`
+ `gzmi` -> `gz model --model`
+ `gzml` -> `gz model --list`
+ `gzmj` -> `gz model --joint`
+ `gzmp` -> `gz model --pose`
+ `gzii` -> `gz msg --info`

## Installation

```bash
$ cd <your colcon workspace>
$ git clone https://github.com/NaokiTakahashi12/fzf_ros2 src/fzf_ros2
$ colcon build <your colcon workspace options>
$ source install/setup.bash
```

Currently, only bash is supported.

We have developed and tested it on ROS 2 Humble,
but we believe it will work on other versions without any problems.
