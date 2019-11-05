#!/bin/bash

cd /home/centos/webapp/
npm install

nohup node server.js >> app.log 2>&1 &

echo "starting application on 3001"

sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/home/centos/webapp/cloudwatch-agent-config.json -s