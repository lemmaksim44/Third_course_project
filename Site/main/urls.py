from django.urls import path
from . import views

urlpatterns = [
    path('main', views.index, name='main'),
    path('account/register', views.register, name='register'),
    path('account/login', views.login, name='login'),
    path('account/logout', views.logout, name='logout'),
    path('account/profile', views.profile, name='profile'),
    path('account/delete/<id_record>', views.delete, name='delete'),
    path('about/<info_film>', views.about, name='about'),
    path('hall/<info_time>', views.hall, name='hall'),
    path('contacts', views.contacts, name='contacts'),
]
