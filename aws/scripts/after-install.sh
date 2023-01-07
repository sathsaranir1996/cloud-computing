#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://##s3-bucket##/DemoApplication.war /usr/local/tomcat9/webapps/DemoApplication.wars


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps