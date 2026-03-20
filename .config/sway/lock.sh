#!/usr/bin/zsh
swayidle \
    timeout 1 'swaymsg "output * power off"' \
    resume    'swaymsg "output * power on"' &

swaylock -Fec 000000
kill %%
