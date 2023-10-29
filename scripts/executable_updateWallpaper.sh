#!/bin/bash

# Get a random file from the wallpaper directory
random_wallpaper=$(find ~/wallpapers/ -type f | shuf -n 1)

wallust -q "$random_wallpaper"

cp $random_wallpaper ~/.cache/current_wallpaper.jpg

swww img $random_wallpaper \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type="random" \
    --transition-duration=0.7 \
    --transition-pos "$( hyprctl cursorpos )"

killall -SIGUSR2 waybar
