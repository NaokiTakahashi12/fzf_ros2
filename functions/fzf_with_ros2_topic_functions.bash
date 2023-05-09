#!/bin/bash

# MIT License
#
# Copyright (c) 2023 Naoki Takahashi
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

function r2tb () {
    topic_name=`ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"`
    if [ -z "$topic_name" ]
    then
        return 1
    fi
    ros2 topic bw $topic_name $@
}
function r2te () {
    topic_name=`ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"`
    if [ -z "$topic_name" ]
    then
        return 1
    fi
    ros2 topic echo $topic_name $@
}
function r2th () {
    topic_name=`ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"`
    if [ -z "$topic_name" ]
    then
        return 1
    fi
    ros2 topic hz $topic_name $@
}
function r2ti () {
    topic_name=`ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"`
    if [ -z "$topic_name" ]
    then
        return 1
    fi
    ros2 topic info $topic_name $@
}
function r2tt () {
    topic_name=`ros2 topic list | fzf --height 30% --preview="ros2 topic info -v {-1}"`
    if [ -z "$topic_name" ]
    then
        return 1
    fi
    ros2 topic type $topic_name $@
}
