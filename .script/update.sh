#!/bin/bash

UPDATE=`pacman -Qu | wc -l`

if [[ $UPDATE -eq 0 ]]; then
    notify-send "System is up-to-date" -i ~/Immagini/ghost.png -t 2000
else
    notify-send "$UPDATE new packages!" -i ~/Immagini/Pacman.png -t 2000
fi

