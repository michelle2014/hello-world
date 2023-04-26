#!/bin/bash
cd /var/www/html/
docker-compose build --no-cache
docker-compose up -d
