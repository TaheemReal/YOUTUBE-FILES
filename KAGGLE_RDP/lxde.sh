#!/bin/bash

# Start QEMU
qemu-system-x86_64 -accel tcg -smp cores=8 -m 8G -vnc :0 -cdrom Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.ISO -boot d -hda disk.img &

# Wait for a brief moment to allow QEMU to start
sleep 10

# Start ngrok for VNC tunnel
./ngrok tcp 5900
