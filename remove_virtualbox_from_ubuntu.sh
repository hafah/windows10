#!/bin/bash

text_ok="[  OK  ]"
text_fail="[ FAIL ]"

echo -en "Fetching all virtualbox packages:\t"
if ! [ -x "$(command -v virtualbox)" ]; then
    echo $text_ok
    echo "You have WSL I assume and don't need virtualbox?"
    echo "We'll remove it for you!"
    export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
    sudo apt-get -y purge virtualbox
    sudo apt-get -y remove virtualbox-dkms
else
    echo $text_fail
    echo "We can't find any virtualbox stuff so we can't remove it."
fi
