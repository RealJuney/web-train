#!/bin/bash

# This checks if the number of arguments is correct
# If the number of arguments is incorrect ( $# != 2) print error message and exit
if [[ $# != 2 ]]
then
  echo "backup.sh target_directory_name destination_directory_name"
  exit
fi

# This checks if argument 1 and argument 2 are valid directory paths
if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
  echo "Invalid directory path provided"
  exit
fi

tmp1=-2
if [[ $tmp1 < 2 ]] && [[ -2 == $tmp1 ]]
then
  echo "it works"
else
  echo "it does not work"
fi

# [TASK 1]
targetDirectory=$1
destinationDirectory=$2

# [TASK 2]
echo "$targetDirectory"
echo "$destinationDirectory"

# [TASK 3]
currentTS=$(date +%s)
echo "currentTS: $currentTS"

# [TASK 4]
backupFileName="backup-$currentTS.tar.gz"
echo "backupFileName: $backupFileName"

# We're going to:
  # 1: Go into the target directory
  # 2: Create the backup file
  # 3: Move the backup file to the destination directory

# To make things easier, we will define some useful variables...

# [TASK 5]
origAbsPath=$(pwd)
echo $origAbsPath

# [TASK 6]
cd # <-
destDirAbsPath="$origAbsPath/$destinationDirectory"

# [TASK 7]
cd "$origAbsPath/$targetDirectory" # <-


# [TASK 8]
yesterdayTS=$(($currentTS - 24 * 60 * 60))

declare -a toBackup

echo $(ls)
for file in $(ls) # [TASK 9]
do
  echo "hi $file"
done

# [TASK 12]

# [TASK 13]

# Congratulations! You completed the final project for this course!
