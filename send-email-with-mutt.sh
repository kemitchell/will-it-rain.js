#!/bin/bash
set -e

if npm exec --yes -p kemitchell/will-it-rain -- will-it-rain; then
  mutt -s "Rain Today" "$your_email" <<< "NOAA forecasts rain today."
fi
