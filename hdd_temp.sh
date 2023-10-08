#!/bin/sh
sudo smartctl -A /dev/sda | grep Temperature_Celsius
sudo smartctl -A /dev/sdb | grep Temperature_Celsius
sudo smartctl -A /dev/sdc | grep Temperature_Celsius
sudo smartctl -A /dev/sdd | grep Temperature_Celsius
sudo smartctl -A /dev/sde | grep Temperature_Celsius
sudo smartctl -A /dev/sdf | grep Temperature_Celsius
sudo smartctl -A /dev/sdg | grep Temperature_Celsius

