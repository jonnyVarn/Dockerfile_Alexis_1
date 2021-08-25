#/bin/ash

adduser -D webadmin
django-admin startproject app .
python3.9 manage.py runserver & PID=$!
sleep 10
kill $PID
python3.9 manage.py startapp pages