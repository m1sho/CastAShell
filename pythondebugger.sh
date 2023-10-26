#!/bin/bash

# print Python process
echo "Finding the current Python process..."

# list all processes and pipe the output to grep

python_processes=$(ps aux | grep python3)

# print the process IDs
echo "Process IDs for Python3 processes:"
echo "$python_processes"

# prompt the user for process ID
read -p "Enter the Process ID of the Python3 process you want to debug with GDB: " pid

# check if the provided process ID is valid
if ps -p "$pid" > /dev/null; then
    # run GDB with the provided process ID
    gdb -p "$pid"
else
    echo "Invalid Process ID. Please enter a valid Process ID."
fi
