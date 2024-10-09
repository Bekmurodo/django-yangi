from django.urls import path
from .views import (
    news_list,
    news_detail,
    homePageView,
    ContactPageView,
    HomePageVIew,
    LocalNewsView,
    ForeignNewsView,
    TechnologyNewsView,
    SportNewsView,
    NewsDeleteView,
    NewsUpdateView,
    NewsCreateView,

)




urlpatterns = [
    path("", HomePageVIew.as_view(), name="home"),
    path('news/', news_list, name="al_news_list"),
    path('news/create/', NewsCreateView.as_view(), name='news_create'),
    path('news/<slug:news>/', news_detail, name="news_detail_page"),
    path('news/<slug>/edit/', NewsUpdateView.as_view(), name='news_update'),
    path('news/<slug>/delete/', NewsDeleteView.as_view(), name='news_delete'),
    path('contact/', ContactPageView.as_view(), name='contact_page'),
    path('local/', LocalNewsView.as_view(), name="local_news_page"),
    path('foreign/', ForeignNewsView.as_view(), name="foreign_news_page"),
    path('technology/', TechnologyNewsView.as_view(), name="technology_news_page"),
    path('sport/', SportNewsView.as_view(), name="sport_news_page")

]