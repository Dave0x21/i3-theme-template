#!/bin/bash

BRIGHT=`cat $HOME/.config/i3/brightness.txt`

if [ "$1" = '+' ]; then
    NEWBRIGHT=$(echo "$BRIGHT + 0.05" | bc)
    if [ "$(echo "$NEWBRIGHT > 1.5" | bc)" -eq 1 ]; then
        NEWBRIGHT='1.5'
    fi
    echo $NEWBRIGHT > $HOME/.config/i3/brightness.txt
    xrandr --output eDP-1 --brightness $NEWBRIGHT
elif [ "$1" = '-' ]; then
    NEWBRIGHT=$(echo "$BRIGHT - 0.05" | bc)
    if [ "$(echo "$NEWBRIGHT < 0.0" | bc)" -eq 1 ]; then
        NEWBRIGHT='0.0'
    fi
    echo $NEWBRIGHT > $HOME/.config/i3/brightness.txt
    xrandr --output eDP-1 --brightness $NEWBRIGHT
else
    xrandr --output eDP-1 --brightness $BRIGHT
fi
