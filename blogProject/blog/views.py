from django.contrib.auth.models import User
from django.shortcuts import render, get_object_or_404
from django.views.generic import ListView, DetailView

from .models import Blog

# Create your views here.
#def BlogListView(request):
#    blogs = Blog.objects.all()

 #   context = {
  #      'blogs': blogs
  #  }
  #  return render(request, "home.html", context=context)

#def Blogdetailview(request, id):
 #   blog = get_object_or_404(Blog, id=id)
 #   context = {
 #       'blog': blog
 #   }
 #   return render(request, 'blog_detail.html',context=context)

class BlogListView(ListView):
    model = Blog
    template_name = 'home.html'
    context_object_name = 'blogs'

class BlogDetailView(DetailView):
    model = Blog
    template_name = 'blog_detail.html'