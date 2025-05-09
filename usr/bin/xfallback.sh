#!/bin/sh

if grep -q 'wayland=on' /proc/cmdline ; then
    return 1
elif grep -q 'wayland=off' /proc/cmdline ; then
    return 0
elif grep -q '^flags[[:space:]]*:.*hypervisor' /proc/cpuinfo ; then
    return 0
elif raspi-config nonint is_pizero ; then
    return 0
elif raspi-config nonint is_pione ; then
    return 0
elif raspi-config nonint is_pitwo ; then
    return 0
elif raspi-config nonint is_pithree ; then
    return 0
else
    return 1
fi
