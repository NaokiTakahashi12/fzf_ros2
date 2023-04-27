#!/bin/bash
function r2st () {
    ros2 service type `ros2 service list | fzf --height 30% --preview="ros2 service type {-1}"` $@
}
