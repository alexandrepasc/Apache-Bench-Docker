#!/bin/bash

FILE_PATH="$(dirname "$(realpath $0)")"
echo $FILE_PATH

docker run -t -d \
-v $FILE_PATH/reports:/home/reports \
--name apacheb apacheb-img