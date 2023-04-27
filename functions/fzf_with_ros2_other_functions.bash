#!/bin/bash
function r2cd () {
    cd `colcon list | fzf --height 30% --preview="colcon info {1}" | awk '{print $2}'`
}
