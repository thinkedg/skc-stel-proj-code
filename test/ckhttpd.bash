#!/bin/bash

echo '>>>>verifying that httpd is running in the container<<<<<'

HTTPD_RUN=`docker exec -it stelligent_mini_project ps ax | grep httpd | grep -v grep`

echo "$HTTPD_RUN" |  grep httpd


