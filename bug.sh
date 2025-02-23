#!/bin/bash

# This script attempts to process files in a directory, but has a subtle bug.

find . -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # Some file processing logic here... Assume this might fail occasionally
  if [[ some_condition ]]; then
    echo "Error processing $file"
    exit 1  # Exiting here causes the loop to terminate prematurely
  fi
  # More file processing...
done

# The script should continue to process other files even if an error occurs, but it doesn't.