#!/bin/sh
# course/ex08-app-newspaper/entrypoint.sh

cd /app

# Verify the availability of the ALLOWED_HOSTS env var
ALLOWED_HOSTS=${ALLOWED_HOSTS:-"*"}

echo "#-- Changing ALLOWED_HOSTS -> '$ALLOWED_HOSTS'"
sed -i "/ALLOWED_HOSTS/s/^.*$/ALLOWED_HOSTS=['$ALLOWED_HOSTS']/g" \
       django_project/settings.py

echo "#-- Django: apply remaining DB migrations"
python3.9 manage.py migrate

echo "#-- Execute Django"
python3.9 manage.py runserver 0.0.0.0:8000
