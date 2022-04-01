# Apache Bench



## Dockerfile
The dockerfile with the instructions to create the image with the Apache Bench application.

## create.sh
Will create the docker image using the Dockerfile as base, the created image name is `apacheb-img`.

Execute:

`./create.sh`

## start_ab.sh
To create and start the docker container, using the `apacheb-img` as base, the container name is `apacheb`. The container will have a volume in `/home/reports` linked to the project folder `reports`.

Execute:

`./start_ab.sh`

## delete_ab.sh
Delete the `apacheb` docker container.

Execute:

`./delete_ab.sh`

## delete_ab_image.sh
Delete the `apacheb-img` docker image.

Execute:

`delete_ab_image.sh`

## run_test.sh
To execute the tests with the -r param so the test doesn't stop with errors, storing te reports in the reports folder and setting the date time for the reports name.

Parameters:

`-n value` the number of requests

`-c value` the number of concurrent  users

`-t value` max time to execute the tests

`-h host` the host the the test will do the requests

Execute:

`./run_test.sh (-n -c -t -h)`

Execute in docker

`docker exec -it apacheb /home/run_test.sh (-n -c -t -h)`