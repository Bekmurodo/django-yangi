from .views import BlogListView
from django.urls import path

urlpatterns = [
    path('', BlogListView, name='home')
]