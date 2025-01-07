#!/bin/bash

# Set output file name
OUTPUT_FILE="output_$(date +%Y%m%d_%H%M%S).mp4"

# Screen resolution (adjust as needed)
RESOLUTION="1920x1080"

# GStreamer pipeline
gst-launch-1.0 ximagesrc \
    ! video/x-raw,framerate=30/1,width=1360,height=768 \
    ! nvvidconv \
    ! omxh264enc \
    ! qtmux \
    ! filesink location="$OUTPUT_FILE"

echo "Screen recording saved to $OUTPUT_FILE"