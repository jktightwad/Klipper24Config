#!/bin/sh
now=$(date +"%F-%H_%M_%S")
config_folder=~/printer_data/config

# TEST_RESONANCES AXIS=X
# TEST_RESONANCES AXIS=Y

echo Processing x-axis
~/klipper/scripts/calibrate_shaper.py /tmp/resonances_x_*.csv -o $config_folder/resonances/shaper_calibrate_x-${now}.png

echo processing y-axis
~/klipper/scripts/calibrate_shaper.py /tmp/resonances_y_*.csv -o $config_folder/resonances/shaper_calibrate_y-${now}.png

# TEST_RESONANCES AXIS=1,1 OUTPUT=raw_data
# TEST_RESONANCES AXIS=1,-1 OUTPUT=raw_data
# ~/klipper/scripts/graph_accelerometer.py -c /tmp/raw_data_axis*.csv -o /tmp/resonances.png
rm /tmp/resonances_*.csv