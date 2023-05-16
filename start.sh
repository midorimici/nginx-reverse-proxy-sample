#!/bin/sh
nginx &&
cd client && yarn start ./client &
cd /app/api && air &
wait
