#!/usr/bin/env bash
while true; do
  files=($(find / -maxdepth 1 -type f))
  for item in ${files[*]}
  do
    if [[ $item == *"bw1234."* ]]; then
      strsplit=$(echo $item | tr "." "\n")
      for str in $strsplit
      do
        if [[ $str != *"/bw1234"* ]]; then
          if [[ $str = *"YOUR_VARIABLE"* ]]; then
            # RUN YOUR COMMAND HERE
          fi
          if [[ $str = *"YOUR_OTHER_VARIABLE"* ]]; then
            # RUN YOUR OTHER COMMAND HERE
          fi
          rm "bw1234.${str}"
        fi
      done
    fi
  done
  sleep 0.5
done
