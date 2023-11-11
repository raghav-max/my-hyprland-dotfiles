#!/usr/bin/env sh

VAR=$(hyprctl activeworkspace | grep "hasfullscreen: 1")
if [ "$VAR" = "" ] ; then
  echo "Tiled"
else
  echo "Max"
fi
