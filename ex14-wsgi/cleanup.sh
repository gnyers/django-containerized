#!/bin/sh
# course/ex14-wsgi/cleanup.sh

echo "#-- Stopping the ex14-wsgi_* stack (incl. removing of any volumes)"
docker compose down --timeout 1 --volumes

echo "#-- Remove all stopped containers"
docker container prune --force

echo "#-- Remove image 'ex14-wsgi_newspaper'"
docker image rm ex14-wsgi_newspaper

echo "#-- Remove image 'ex14-wsgi_nginx'"
docker image rm ex14-wsgi_nginx

echo "#-- Remove all unused container images"
docker image prune --force
