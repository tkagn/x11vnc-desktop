#! /bin/bash

export DISPLAY=:0

# Start Virtual frambuffer
Xvfb :0 -screen 0 1024x768x16 > Xfvb.log 2>&1 &

# Start Joe Window Manager
jwm > jwm.log 2>&1 &

# Start x11vnc
x11vnc -noipv6 -nevershared -forever
