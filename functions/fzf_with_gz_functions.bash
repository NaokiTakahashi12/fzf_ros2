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

function gzti () {
    topic=`gz topic -l | fzf --height 30% --preview="gz topic -i -t {-1}"`
    if [ -z "$topic" ]
    then
        return 1
    fi
    gz topic -i -t $topic $@
}

function gzte () {
    topic=`gz topic -l | fzf --height 30% --preview="gz topic -i -t {-1}"`
    if [ -z "$topic" ]
    then
        return 1
    fi
    gz topic -e -t $topic $@
}

function gzsi () {
    service=`gz service -l | fzf --height 30% --preview="gz service -i -s {-1}"`
    if [ -z "$service" ]
    then
        return 1
    fi
    gz service -i -s $service $@
}

function gzmi () {
    model=`gz model --list | grep "-" | tr -d "\- " | fzf --height 30% --preview="gz model -m {-1}"`
    if [ -z "$model" ]
    then
        return 1
    fi
    gz model -m $model $@
}

function gzml () {
    model=`gz model --list | grep "-" | tr -d "\- " | fzf --height 30% --preview="gz model -m {-1}"`
    if [ -z "$model" ]
    then
        return 1
    fi
    gz model -l -m $model $@
}

function gzmj () {
    model=`gz model --list | grep "-" | tr -d "\- " | fzf --height 30% --preview="gz model -m {-1}"`
    if [ -z "$model" ]
    then
        return 1
    fi
    gz model -j -m $model $@
}

function gzmp () {
    model=`gz model --list | grep "-" | tr -d "\- " | fzf --height 30% --preview="gz model -m {-1}"`
    if [ -z "$model" ]
    then
        return 1
    fi
    gz model -p -m $model $@
}

function gzii () {
    interface=`gz msg -l | fzf --height 30% --preview="gz msg -i {-1}"`
    if [ -z "$interface" ]
    then
        return 1
    fi
    gz msg -i $interface $@
}
