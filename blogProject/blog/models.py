from django.db import models
from django.contrib.auth.models import User
from django.http import Http404
from django.shortcuts import render


# Create your models here.
class Blog(models.Model):
    title = models.CharField(max_length=100)
    author = models.ForeignKey(User, on_delete=models.CASCADE,)
    text = models.TextField()

    def __str__(self):
        return self.title

def Blogdetailview(request, id):
    try:
        blog = Blog.objects.get(id=id)
        context = {
            'blog': blog,
        }
    except Blog.DoesNotExist:
        raise Http404('no blog found')

    return render(request, 'blog_detail.html', context=context)

