from django.contrib import admin
from django.urls import path


#import view
from . import views

urlpatterns = [
    path('', views.forum),
]