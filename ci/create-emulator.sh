#!/bin/sh
set -e
echo no | android create avd --force -n test -t android-24 --abi x86
emulator -avd test -netdelay none -netspeed full -no-window -no-audio -no-skin -no-accel &
sleep 30
adb -e shell getprop
android-wait-for-emulator

