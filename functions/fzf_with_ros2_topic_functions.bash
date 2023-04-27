#!/bin/bash
function r2tb () {
    ros2 topic bw `ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"` $@
}
function r2te () {
    ros2 topic echo `ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"` $@
}
function r2th () {
    ros2 topic hz `ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"` $@
}
function r2ti () {
    ros2 topic info `ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"` $@
}
function r2tt () {
    ros2 topic type `ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"` $@
}
