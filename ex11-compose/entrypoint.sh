#!/bin/sh
# course/ex11-compose/entrypoint.sh

cd /app

# Verify the availability of the ALLOWED_HOSTS env var
ALLOWED_HOSTS=${ALLOWED_HOSTS:-"*"}

echo "#-- Changing ALLOWED_HOSTS -> '$ALLOWED_HOSTS'"
sed -i "/ALLOWED_HOSTS/s/^.*$/ALLOWED_HOSTS=['$ALLOWED_HOSTS']/g" \
       django_project/settings.py

echo "#-- Django: apply remaining DB migrations"
python3.9 manage.py migrate

echo "#-- Create superuser: $ADMIN_USER"
python3.9 manage.py shell < createsuperuser.py

echo "#-- Execute Django"
python3.9 manage.py runserver 0.0.0.0:8000
