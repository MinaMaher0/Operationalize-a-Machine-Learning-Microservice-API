#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

docker build --tag=app .

docker images ls

docker run -p 8000:80 app

