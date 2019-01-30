#!/usr/bin/env bash

messages=(
  "Close your eyes tightly for one minute"
  "Drink a lot of water"
  "Take your eyes off screen for 2 minutes"
  "Exercise your wrists and neck"
  "Have a fruity snack"
  )

message=${messages[$RANDOM % ${#messages[@]} ]}

notify-send -a "Your consciences says:" "${message}"
