from django.urls import pathfrom . import viewsurlpatterns = [  path('', views.index, name="index")]