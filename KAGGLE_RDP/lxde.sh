#!/bin/bash

# Start QEMU
./ngrok tcp 5901 &

# Wait for a brief moment to allow QEMU and ngrok to start
sleep 10

# Start Xvfb for a virtual display
Xvfb :1 -screen 0 1024x768x16 &

# Set the display environment variable
export DISPLAY=:1

# Start LXDE or any other graphical application you need
startlxde

# Clean up when done
killall Xvfb
