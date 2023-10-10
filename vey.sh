#!/bin/bash
echo ready
while true
do
    sleep 1s
    processes=("lock-screen" "veyon-worker" "socat" "epoptes-client")  # Add more process names here
    for process in "${processes[@]}"
    do
        if pgrep -x "$process" > /dev/null
        then
            echo -e "Hem petat: \033[1m$process\033[0m"
            pkill "$process"
        else
            echo "Buscant process: $process"
        fi
    done
done
