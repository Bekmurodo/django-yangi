from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404
from .models import News, Category
from .forms import ContactForm
from django.views.generic import TemplateView, ListView


# Create your views here.
def news_list(request):
    news_list = News.published.all()
    context = {
        "news_list":news_list
    }
    return render(request, "news/news_list.html", context)

def news_detail(request, news):
    news = get_object_or_404(News, slug=news, status=News.Status.Published)
    context = {
        "news": news
    }
    return render(request, "news/news_detail.html", context)

def homePageView(request):
    categories = Category.objects.all()
    news_list = News.published.all().order_by("-publish_time")[:15]
    local_one = News.published.filter(category__name="Mahalliy").order_by("-publish_time")[:1]
    local_news = News.published.all().filter(category__name="Mahalliy")[1:6]
    context = {
        'news_list': news_list,
        'categories': categories,
        "local_one" : local_one,
        "local_news": local_news

    }

    return render(request, 'news/home.html', context)


class HomePageVIew(ListView):
    model = News
    template_name = 'news/home.html'
    context_object_name = 'news'

    def  get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categories'] = Category.objects.all()
        context['news_list'] = News.published.all().order_by("-publish_time")[:5]
        context['mahalliy_xabarlar'] = News.published.filter(category__name="Mahalliy").order_by("-publish_time")[:5]
        context['xorij_xabarlari'] = News.published.filter(category__name="Xorij").order_by("-publish_time")[:5]
        context['sport_xabarlari'] = News.published.filter(category__name="Sport").order_by("-publish_time")[:5]
        context['texnologiya_xabarlari'] = News.published.filter(category__name="Texnoligiya").order_by("-publish_time")[:4]

        return context

class ContactPageView(TemplateView):
    template_name = 'news/contact-us.html'

    def get(self, request, *args, **kwargs):
        form = ContactForm()
        context = {
            'form': form
        }
        return render(request, 'news/contact-us.html', context)

    def post(self, request, *args, **kwargs):
        form = ContactForm(request.POST)
        if request.method == 'POST' and form.is_valid():
            form.save()
            return HttpResponse("<h2> Biz bilan bo'glanganingiz uchun tashakkur!</h2>")
        context = {
            "form" : form
        }

        return render(request, 'news/contact-us', context)

class LocalNewsView(ListView):
    model = News
    template_name = 'news/mahalliy.html'
    context_object_name = 'mahalliy_yangiliklar'

    def get_queryset(self):
        news = self.model.published.all().filter(category_id = 3)
        return news

class ForeignNewsView(ListView):
    model = News
    template_name = 'news/xorij.html'
    context_object_name = 'xorij_yangiliklari'

    def get_queryset(self):
        news = self.model.published.all().filter(category_id= 6)
        return news

class TechnologyNewsView(ListView):
    model = News
    template_name = 'news/texnologiya.html'
    context_object_name = 'texnologiya_yangiliklari'

    def get_queryset(self):
        news = self.model.published.all().filter(category_id= 5)
        return news

class SportNewsView(ListView):
    model = News
    template_name = 'news/sport.html'
    context_object_name = 'sport_yangiliklari'

    def get_queryset(self):
        news = self.model.published.all().filter(category_id= 4)
        return news

