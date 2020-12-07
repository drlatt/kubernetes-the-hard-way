#!/bin/bash
set -e

INSTANCES=("controller-0" "controller-1" "controller-2" "worker-0" "worker-1" "worker-2")

function start_instances {
    for vm in "${INSTANCES[@]}"
    do 
        echo 'starting ' ${vm} ' ....'
        gcloud compute instances start ${vm} --async
    done
}

start_instances
