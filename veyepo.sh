#!/bin/bash

# Array of process names to search for
process_names=("epoptes-client" "socat" "veyon-worker")

while true; do
  for name in "${process_names[@]}"; do
    # Search for the PID of the process
    pid=$(pgrep "$name")

    # Check if the PID exists
    if [[ -z $pid ]]; then
      echo "No $name process found."
    else
      echo "Found $name process with PID: $pid"
      # Kill the process
      kill -9 $pid
      echo "Killed $name process with PID: $pid"
    fi
  done

  # Sleep for 1 second
  sleep 1
done
