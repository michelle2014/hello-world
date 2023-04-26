#!/bin/bash
cd /var/www/html/
password=$(aws ssm get-parameters --region us-west-2 --names Environment_Variables --with-decryption --query Parameters[0].Value)
# get ride of "
password=`echo $password | sed -e 's/^"//' -e 's/"$//'`
# separate variables with $
IFS='&' read -r  DB_HOST DB_PORT DB_SCHEMA DB_DATABASE DB_USERNAME DB_PASSWORD DB_ROOT_PASSWORD <<< $password

# add environment variables to .env file
sudo bash -c "echo $DB_HOST>> .env"
sudo bash -c "echo $DB_PORT>> .env"
sudo bash -c "echo $DB_SCHEMA>> .env"
sudo bash -c "echo $DB_DATABASE>> .env"
sudo bash -c "echo $DB_USERNAME>> .env"
sudo bash -c "echo $DB_PASSWORD>> .env"
sudo bash -c "echo $DB_ROOT_PASSWORD>> .env"
