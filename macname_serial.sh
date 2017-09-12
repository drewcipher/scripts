#!/bin/sh

# get the serial number of the mac
MAC_SERIAL_NUMBER=`ioreg -l | grep IOPlatformSerialNumber | awk '{print $4}' | cut -d \" -f2`
# and assign that serial number to the variable
echo MAC_SERIAL_NUMBER $MAC_SERIAL_NUMBER
serial=$MAC_SERIAL_NUMBER
# use scutil to change host, computer, and local host
scutil --set ComputerName $serial
scutil --set HostName $serial
scutil --set LocalHostName $serial
exit 0
