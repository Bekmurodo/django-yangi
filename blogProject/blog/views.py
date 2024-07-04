from django.contrib.auth.models import User
from django.shortcuts import render
from .models import Blog

# Create your views here.
def BlogListView(request):
    blogs = Blog.objects.all()

    context = {
        'blogs': blogs
    }
    return render(request, "home.html", context=context)
