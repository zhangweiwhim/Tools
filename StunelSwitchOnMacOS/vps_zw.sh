#!/bin/zsh

pid=$(cat /usr/local/var/run/stunnel.pid)
pid_exist=$(ps x | grep stunnel | grep -v grep | awk '{print $1}')

function proxy_off() {
  networksetup -switchtolocation this # this is a location name
  echo "Roll back location"
}
function proxy_on() {
  networksetup -switchtolocation vpn # vpn is a location name
  echo "Switch to vpn location"
}


if [ ! $pid_exist ];then
  stunnel
  echo "Started stunnel on $pid"
  proxy_on
else
  kill -9 $pid
  echo "Closed stunnel on $pid"
  proxy_off
fi


