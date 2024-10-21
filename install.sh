#!/usr/bin/env bash

declare installPath=~/Library/Developer/Xcode/UserData/FontAndColorThemes/

echo "Adding themes to $installPath 🏗️"

mkdir -p $installPath
for theme in *.xccolortheme; do
  xcodeThemeName=$(echo $theme | sed 's/\%//g')
  cp -ir "$theme" "$installPath$xcodeThemeName"
done

themesCount=$(find . -name "*.xccolortheme" | wc -l)
echo "Added ${themesCount} themes ✅"