#!/bin/bash

echo $1

while getopts n:c:t:h: flag
do
    case "${flag}" in
        n) requestnumber=${OPTARG};;
        c) concurrentusers=${OPTARG};;
        t) duration=${OPTARG};;
        h) host=${OPTARG}
    esac
done

time=`date +%m-%d-%Y_%H:%M`

if [[ $requestnumber != "" ]]
then
    commRequest="-n $requestnumber"
else
    commRequest=""
fi

if [[ $concurrentusers != "" ]]
then
    commUsers="-c $concurrentusers"
else
    commUsers=""
fi

if [[ $duration != "" ]]
then
    commTime="-t $duration"
else
    commTime=""
fi

FILE_PATH="$(dirname "$(realpath $0)")"

echo ab $commRequest $commUsers $commTime -r -g $FILE_PATH/reports/report_$time.txt -e $FILE_PATH/reports/report_$time.csv $host

ab $commRequest $commUsers $commTime -r -g $FILE_PATH/reports/report_$time.txt -e $FILE_PATH/reports/report_$time.csv $host