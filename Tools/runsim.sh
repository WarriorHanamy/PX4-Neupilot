#!/bin/bash
echo "Please make sure that you run this command at the root of your px4 project.!!!"

if [ -z "$1" ]; then
    echo "No GUI Required, HEADLESS=1."
    HEADLESSVal=1
else
    if [ "$1" == 2 ]; then
        TYPE="gz_x500"
    else
        TYPE="gz_quadtailsitter"
    fi
    HEADLESSVal=0
fi


# start communication
MicroXRCEAgent udp4 -p 8888 &

# Start the PX4 SITL
if [ $HEADLESSVal -eq 1 ]; then
    echo "Running PX4 SITL in headless mode."
    HEADLESS=1 make px4_sitl gz_quadtailsitter
else
    echo "Running PX4 SITL with GUI."
    make px4_sitl $TYPE
fi
