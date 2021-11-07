# course/ex08-app-newspaper/Dockerfile
# Uncomment/change the content as instructed in the exercise
FROM python:3.9.7-alpine3.14

WORKDIR /app

RUN apk update

VOLUME /data

COPY app/ .

# RUN python3.9 manage.py migrate
# RUN sed -i '/ALLOWED_HOSTS/s/^.*$/ALLOWED_HOSTS=["*"]/g' config/settings.py
# CMD ["python3.9", "manage.py", "runserver", "0.0.0.0:8000"]

CMD [ "/bin/sh" ]
