#!/usr/bin/env bash

sed -i "s/the_secret_key/${AWS_SECRET_KEY}/g" /root/.aws/credentials
sed -i "s/the_access_key/${AWS_ACCESS_KEY}/g" /root/.aws/credentials

/opt/aws/amazon-cloudwatch-agent/bin/start-amazon-cloudwatch-agent &​

python manage.py runserver 0.0.0.0:8000