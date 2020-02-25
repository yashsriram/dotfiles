#!/usr/bin/env bash

messages=(
  "Exercise your wrists and neck"
  "Happiness is the result, not the process"
  "Remember you are gonna die one day, so relax and enjoy!"
  "Take a look out of the screen you are alive, actually alive!"
  "Happiness cannot be extracted from others"
  "Only you are responsible for your happiness"
  "Wanting more positive experience is itself a negative experience ironically, accepting negative one is itself a positive experience"
  "Love is within you. Always!"
  )

message=${messages[$RANDOM % ${#messages[@]} ]}

notify-send -a "Your conscience" "${message}" -t 5000
