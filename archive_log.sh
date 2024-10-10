#!/bin/bash

# Check if the file 'heart_rate_log.txt' exists
if [ -f "heart_rate_log.txt" ]; then
        timestamp=$(date +"%Y%m%d_%H%M%S")
        mv heart_rate_log.txt heart_rate_log.txt_$timestamp
        echo "File heart_rate_log.txt archived successfully!"
        echo "Its new name is heart_rate_log.txt_$timestamp!"

else
        echo "File heart_rate_log.txt not found!"
fi
