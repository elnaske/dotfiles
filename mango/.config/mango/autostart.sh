#!/bin/bash

~/.local/bin/wal -R

pkill -9 waybar
sleep 0.2 && waybar &
