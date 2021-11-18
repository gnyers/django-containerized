#!/bin/bash
# file: course/ex14-wsgi/prep.sh
mkdir -p /home/student/course/ex14-wsgi/newspaper/
mkdir -p /home/student/course/ex14-wsgi/nginx/
cd $HOME/course/ex14-wsgi/
export APP="/home/student/djangoforbeginners/ch16-deployment"
echo "*** Copying $APP -> newspaper/app"
cp -r $APP newspaper/app
