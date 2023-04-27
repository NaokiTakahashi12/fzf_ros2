#!/bin/bash
function r2ai () {
    ros2 action info `ros2 action list | fzf --height 30% --preview="ros2 action info {-1}"` $@
}
