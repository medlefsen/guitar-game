#!/usr/bin/env bash
cd "$(dirname "$0")"

files=( `printf "%s\n" ../raw/lunge/*.png | sort` )
i=1
for f in "${files[@]}"
do
  convert "$f" -flop "$(printf "%04d.png" $i)"
  let i++
done
