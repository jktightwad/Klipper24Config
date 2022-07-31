#!/bin/bash

FILES=`ls /tmp/resonances_*.csv`

mkdir -p ~/klipper_config/graphs

for file in ${FILES}
do
    name=`basename ${file} .csv`
    ~/klipper/scripts/calibrate_shaper.py $file -o ~/klipper_config/graphs/${name}.png
    # mv $file $file.processed 
done