from django.urls import path
from .views import news_list, news_detail, homePageView

urlpatterns = [
    path("", homePageView, name="home"),
    path('news/', news_list, name="al_news_list"),
    path('news/<int:id>', news_detail, name="news_detail_page")
]