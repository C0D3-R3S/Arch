#!/bin/bash

mode=$1

echo $mode

if [[ $mode == "desktop" ]]; then
  sc-desktop.py start &> /dev/null
  result=$?
  if [[ $result != 0 ]];
  then sc-desktop.py stop &> /dev/null
    notify-send 'Steamcontroller' 'Steamcontroller deactivated' --icon=dialog-information;
  else notify-send 'Steamcontroller' 'Desktop Mode activated' --icon=dialog-information;
  fi;
else
  sc-xbox.py start &> /dev/null
  result=$?
  if [[ $result != 0 ]];
  then sc-xbox.py stop &> /dev/null
    notify-send 'Steamcontroller' 'Steamcontroller deactivated' --icon=dialog-information;
  else notify-send 'Steamcontroller' 'XBox360 Mode activated' --icon=dialog-information;
  fi;
fi
