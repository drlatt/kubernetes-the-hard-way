#!/bin/bash
set -e

INSTANCES=("controller-0" "controller-1" "controller-2" "worker-0" "worker-1" "worker-2")

function stop_instances {
    for vm in "${INSTANCES[@]}"
    do 
        echo 'stopping ' ${vm} ' ....'
        gcloud compute instances stop ${vm} --async
    done
}

stop_instances
