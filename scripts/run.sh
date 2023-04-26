#!/bin/bash
cd /var/www/html/
docker-compose down -v
docker-compose build --no-cache
docker-compose up -d
