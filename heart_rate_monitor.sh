#!/bin/bash

# Prompt for device name
read -p "Enter device name (e.g., Monitor_A): " device_name


# Main loop to record heart rate data
record_heart_rate() {
    while true; do
        # Get current timestamp
        timestamp=$(date '+%Y-%m-%d %H:%M:%S')
        
       # Generate random heart rate between 40 and 100
	heart_rate=$((RANDOM % 61 + 40))
        
        # Append to log file
        echo "$timestamp $device_name $heart_rate" >> heart_rate_log.txt
        
        # Wait for 1 second
        sleep 1
    done
}
