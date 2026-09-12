#!/bin/bash

external="HDMI-A-1"
internal="eDP-1"

if ! $(wlr-randr | grep $external); then
    wlr-randr --output $external --left-of $internal
    wlr-randr --output $external --preferred
fi
