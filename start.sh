#!/usr/bin/env bash

function startServer() {
  java -jar build/server/webapp-runner-*.jar --port 8080 build/libs/*.war
  sleep 3
}

startServer

while true; do
  PID=$(pgrep "java")
  if [[ -z $PID ]]; then
    echo "Process has died, restarting..."
    startSlave
  fi
  sleep 10
done
