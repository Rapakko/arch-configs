#!bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch polybar
polybar system-monitoring &
polybar workspaces &
polybar workspaces2 &
polybar filesystem &
polybar system-monitoring2
