from django.urls import path
from .views import (
    news_list,
    news_detail,
    homePageView,
    contactPageView,
    viewPage404,
)




urlpatterns = [
    path("", homePageView, name="home"),
    path('news/', news_list, name="al_news_list"),
    path('news/<int:id>', news_detail, name="news_detail_page"),
    path('contact/', contactPageView, name='contact_page'),
    path('404', viewPage404, name='404')

]