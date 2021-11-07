# course/ex13-env/Dockerfile
FROM python:3.9.7-alpine3.14

WORKDIR /app
RUN     apk update

ENV     DEBUG=True  \
        DATABASE_URL=sqlite:///db.sqlite3 \
        ADMIN_USER=admin  \
        ADMIN_EMAIL=admin@example.com  \
        ADMIN_PW='S4cret!'

VOLUME  /data
COPY    *  ./

RUN python3.9 -m pip install -r requirements.txt
RUN python3.9 manage.py migrate
CMD [ "/bin/sh", "/app/entrypoint.sh" ]
