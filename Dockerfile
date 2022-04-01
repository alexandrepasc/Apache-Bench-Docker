from debian:stable-slim

copy run_test.sh /home/run_test.sh

run apt-get -y update && apt-get -y install apache2-utils
# run apt-get -y install apache2-utils

run chmod +x /home/run_test.sh

WORKDIR /home