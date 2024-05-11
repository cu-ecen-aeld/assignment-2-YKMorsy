#!/bin/bash

if [ "$#" -ne 2 ]; then
        echo "Usage: $0 <filesdir> <searchstr>"
        exit 1
fi



filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then

        echo "Directory does not exist"
        exit 1

fi

num_lines=$(grep -r "$searchstr" $filesdir | wc -l)
num_files=$(find $filesdir -type f | wc -l)

# print count of expr
echo "The number of files are $num_files and the number of matching lines are $num_lines"
