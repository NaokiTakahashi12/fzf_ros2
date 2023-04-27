#!/bin/bash
function r2ni () {
    ros2 node info `ros2 node list | fzf --height 30% --preview="ros2 node info {-1}"` $@
}
