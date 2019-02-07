while true; do
  files=($(find / -maxdepth 1 -type f))
  for item in ${files[*]}
  do
    if [[ $item == *"bw1234."* ]]; then
      strsplit=$(echo $item | tr "." "\n")
      for str in $strsplit
      do
        if [[ $str != *"/bw1234"* ]]; then
          # RUN YOUR COMMAND HERE
          rm "bw1234.${str}"
        fi
      done
    fi
  done
done
