# Uncomment/change the content as instructed in the exercise

FROM python:3-alpine

WORKDIR /app

RUN apk update && apk add py3-django

RUN django-admin startproject config .
RUN python3.9 manage.py migrate
RUN sed -i '/ALLOWED_HOSTS/s/^.*$/ALLOWED_HOSTS=["*"]/g' config/settings.py

### The `VOLUME` instruction creates a mount point with the specified name and
### marks it as holding externally mounted volumes from native host or other
### containers
# VOLUME /data

CMD ["python3.9", "manage.py", "runserver", "0.0.0.0:8000"]
