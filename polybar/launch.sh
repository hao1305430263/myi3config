#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# polybar -c $HOME/.config/polybar/dark-config nord-top &
polybar -c $HOME/.config/polybar/nord nord-top &
# polybar -c $HOME/.config/polybar/nord nord-down &
# polybar -c $HOME/.config/polybar/config-my mb &

echo "Bars launched..."

notify-send 'Bars launch'
