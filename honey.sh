#!/bin/bash

PORT=$1 # we will read the first parameter from our srcript call into port 
DIR="/mnt/c/Users/ahat_/OneDrive/Desktop/Honeypot" # we will set dir to honeypot

while :
do
  echo "" >>$DIR/$PORT.log; #append a blank line to the log file 
  sudo nc -lvnp $PORT < $DIR/$PORT.log 2 >>$DIR/$PORT.log;
  #invooke a port liciner send out the bnner 
  #capture the log and ip 
  #note 1 >>
  echo $(date) >>$DIR/$PORT.log;
  sleep 2 #

done
