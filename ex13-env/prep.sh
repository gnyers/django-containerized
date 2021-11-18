#!/bin/bash
# file: course/ex13-env/prep.sh
cd $HOME/course/ex13-env/
export APP="/home/student/djangoforbeginners/ch16-deployment"
echo "*** Copying $APP -> app"
cp -r $APP app
