#!/bin/bash
function r2is () {
    ros2 interface show `ros2 interface list | fzf --height 30% --preview="ros2 interface show {-1}"` $@
}
