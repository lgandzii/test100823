#!/bin/bash
for i in {a..g}
do
	echo -n "Checking disk /dev/sd$i:"
	smartctl -H /dev/sd$i | grep "overall-health" | awk '{print $NF}'
done
