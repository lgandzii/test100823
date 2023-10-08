#!/bin/bash

# Check if smartmontools is installed
if ! command -v smartctl &> /dev/null; then
	    echo "smartmontools is not installed. Please install it."
	        exit 1
fi

# Loop through disks /dev/sda to /dev/sdg
for DISK in /dev/sd{a..g}; do
	    # Check the SMART status of the current disk
	        HEALTH=$(smartctl -H "$DISK" | awk '/SMART overall-health/ {print $NF}')
		    # Check if the health status is "PASSED" or "FAILED"
		        if [[ "$HEALTH" == "PASSED" ]]; then
				        STATUS="OK"
					    else
						            STATUS="FAILED"
							        fi
								    # Output the disk name and its health status
								        echo "$DISK $STATUS"
								done
