#!/usr/bin/env bash

messages=(
  "Happiness cannot be extracted from others"
  "Only you are responsible for your happiness"
  "Happiness is a problem"
  "Wanting more positive experience is itself a negative experience ironically, accepting negative one is itself a positive experience"
  "Love is within you. Always!"
  "Remember you are gonna die one day, so relax and enjoy!"
  )

message=${messages[$RANDOM % ${#messages[@]} ]}

notify-send -a "Your conscience" "${message}" -i /usr/share/icons/Adwaita/24x24/emblems/emblem-favorite-symbolic.symbolic.png -t 5000
