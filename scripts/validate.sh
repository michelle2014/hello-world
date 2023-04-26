#!/bin/bash
password=$(aws ssm get-parameters --region us-west-2 --names Environment_Variables --with-decryption --query Parameters[7].Value)
password=`echo $password | sed -e 's/^"//' -e 's/"$//'`
mysqladmin -u root password $password
