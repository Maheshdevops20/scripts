#!/bin/bash

memory_info(){

    mem_info=$(free -m)
    total_mem=$(echo "$mem_info" | awk  '/Mem:/ {print $2}')
    currently_utillized_mem=$(echo "$mem_info" | awk '/Mem:/ {print $3}')
    echo "Total_memory: $total_mem MB, Used_memory: $currently_utillized_mem MB"
}
