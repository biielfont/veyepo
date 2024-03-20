#!/bin/bash

# Function to retrieve the content of the version file from GitHub
check_version() {
  # Replace the placeholders with the actual GitHub file URL
  github_file_url="https://raw.githubusercontent.com/biielfont/veyepo/main/version"
  
  # Use curl to fetch the content of the version file
  retrieved_version=$(curl -s $github_file_url)
  
  # Current version used in the script
  current_version="1.0"  # Replace with the actual current version used in the script
  
  # Compare the retrieved version with the current version
  if [[ "$retrieved_version" == "$current_version" ]]; then
    echo "You are up to date. Current version: $current_version"
  else
    echo "You need an update. Current version: $current_version, Latest version: $retrieved_version"
  fi
}
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
