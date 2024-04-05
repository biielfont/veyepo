#!/bin/bash

# Retrieving the content of the version file from GitHub
check_version() {
  version_url="https://raw.githubusercontent.com/biielfont/veyepo/main/version"
  
  # Use curl to fetch the content of the version file
  retrieved_version=$(curl -s $version_url)
  
  # Current version used in the script
  current_version="2.0.2"  
  
  # Compare the retrieved version with the current version
  if [[ "$retrieved_version" == "$current_version" ]]; then
    echo "[VeyEpo] Estàs al dia. Versió actual: $current_version"
  else
    echo "Necessites una actualització. Versió actual: $current_version, Ultima versió: $retrieved_version"
    read -p "Vols actualitzar? (S/N): " choice
    if [[ "$choice" == "S" || "$choice" == "s" ]]; then
      # Use curl to download the updated file
      rm -rf "${0##*/}"
      curl -o "${0##*/}" -L https://raw.githubusercontent.com/biielfont/veyepo/main/veyepo.sh
      # Give it permissions
      chmod +x "${0##*/}"
      # Clear the terminal and give a message.
      clear
      echo "[VeyEpo] Actualitzat a la ultima versió, v$current_version"
      # Execute the new script
      ./"${0##*/}"
    else
      echo "Sortint de l'aplicació."
      exit 0
    fi
  fi
}

# Starting checkversion once in the start.
check_version

# Array of process names to search for
process_names=("epoptes-client" "socat" "veyon-worker")

while true; do
  for name in "${process_names[@]}"; do
    # Search for the PID of the process using pidof
    pid=$(pidof "$name")

    # Check if the PID exists
    if [[ -z $pid ]]; then
      echo "[VeyEpoSearh] No s'ha trobat el procés $name"
    else
      echo "[VeyEpoSearh] S'ha trobat el procés $name amb el PID: $pid"
      # Kill the process
      kill -7 $pid
      echo "[VeyEpoKill] S'ha matat el procés $name amb PID: $pid"
    fi
  done

  # Sleep for 1 second
  sleep 1
done

