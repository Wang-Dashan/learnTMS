#!/usr/bin/env bash

count=1

while true
do
	./buggy.sh 2> out.log
	if [[ $? -ne 0 ]];then
		echo "failed after $count times"
		cat out.log
		break
	fi
	((count++))

done


# for ((count=1;;count++))
# do
#     ./buggy.sh 2> out.log
#     if [[ $? -ne 0 ]]; then
#         echo "failed after $count times"
#         cat out.log
#         break
#
#     echo "$count try"
#     fi
# done

# count=0
# until [[ "$?" -ne 0 ]];
# do
#     count=$((count+1))
#     ./buggy.sh 2> out.txt
# done
#
# echo "found error after $count runs"
# cat out.txt
