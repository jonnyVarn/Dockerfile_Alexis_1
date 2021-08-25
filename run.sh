#/bin/ash

adduser -D webadmin
django-admin startproject app .
python3.9 manage.py runserver & PID=$!
sleep 10
kill $PID
python3.9 manage.py startapp pages
mkdir /app/pages
echo "from django.urls import pathfrom . import viewsurlpatterns = [  path('', views.index, name="index")]" > views.py
echo "from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('', include('pages.urls')),
    path('admin/', admin.site.urls),
]" > /app/urls.py

# how to escape?? should put pages.apps in settings.py after vim -c "1,$ s/\(\'django.contrib.admin'\, \)/\1 \ \'pages.apps.PagesConfig'\ \ " -c "wq" settings.py
#copying instead

python3.9 manage.py runserver


