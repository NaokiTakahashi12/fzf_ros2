#!/bin/bash
function r2pd () {
    ros2 param dump `ros2 node list | fzf --height 30% --preview="ros2 param dump {-1}"` $@
}
