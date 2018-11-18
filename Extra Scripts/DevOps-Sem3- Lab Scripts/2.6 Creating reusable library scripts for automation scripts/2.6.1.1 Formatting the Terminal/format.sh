#!/bin/bash

style() {
    echo "\033[$1m"
}

red_text() { printf "$(style "31")$1$(style "0")"; }
green_text() { printf "$(style "32")$1$(style "0")"; }
yellow_text() { printf "$(style "33")$1$(style "0")"; }
blue_text() { printf "$(style "34")$1$(style "0")"; }
cyan_text() { printf "$(style "36")$1$(style "0")"; }


progress_bar() {
    if [ -z "$1" ] ; then
        echo "ERROR: The duration of the progress bar is required" >&2;
        exit 1;
    fi

    local duration=$1
    local increment=$((100/$duration))
    for (( elapsed=0; elapsed<=100; elapsed=elapsed+increment )); do
        for ((done=0; done<elapsed; done=done+1)); do
            printf "$(green_text "▇")";
        done

        for ((remain=elapsed; remain<100; remain=remain+1)); do
            printf "$(cyan_text "-")";
        done

        printf "| $(yellow_text "$elapsed") %%" ;
        sleep 1
        printf "\r";
    done
    echo -e "\n";
}

camelcase() {
    echo $1 | awk '{print toupper(substr($0,0,1))tolower(substr($0,2))}'
}

uppercase() { echo $1 | awk '{print toupper($0)}' }

lowercase() { echo $1 | awk '{print tolower($0)}' }

