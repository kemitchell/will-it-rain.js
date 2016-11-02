#!/bin/bash
set -e

if [ ! hash will-it-rain &>/dev/null ]; then
  npm i -g kemitchell/will-it-rain.js
fi

if will-it-rain; then
  mutt -s "Rain Today" "$your_email" <<< "NOAA forecasts rain today."
fi
