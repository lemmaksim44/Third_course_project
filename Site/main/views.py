from _datetime import datetime
from django.contrib.auth.forms import AuthenticationForm
from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.contrib import auth

from .models import *
from .forms import *


def index(request):
    cinema = Cinema.objects.order_by('title')
    return render(request, 'main/index.html', {'cinema': cinema})


def register(request):
    if request.method == 'POST':
        form = registerform(request.POST)
        if form.is_valid():
            new_user = form.save(commit=False)
            new_user.set_password(form.cleaned_data['password'])
            new_user.save()
            return HttpResponseRedirect("../account/login")
    else:
        form = registerform()
    return render(request, 'main/register.html', {'form': form})


def login(request):
    error = ''
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = auth.authenticate(username=username, password=password)
        if user is not None and user.is_active:
            auth.login(request, user)
            return HttpResponseRedirect("../account/profile")
        else:
            error = 'Неверный логин или пароль!'

    form = AuthenticationForm
    return render(request, 'main/login.html', {'form': form, 'error': error})


def logout(request):
    auth.logout(request)
    return HttpResponseRedirect("../main")


def profile(request):
    today = datetime.now().date()
    time_now = datetime.now().time()
    book = Booking.objects.order_by('-id_booking')
    return render(request, 'main/profile.html', {'book': book, 'today': today, 'time_now': time_now})


def delete(request, id_record):
    record = Booking.objects.get(id_booking=id_record)
    record.delete()
    return HttpResponseRedirect("../profile")


def about(request, info_film):
    cinema = Cinema.objects.get(id_cinema=info_film)
    date_time = datetime.now().time()
    return render(request, 'main/about.html', {'cinema': cinema, 'date_time': date_time})


def hall(request, info_time):

    time = Timetable.objects.get(id_timetable=info_time)
    date_time = datetime.now().date()
    book = Booking.objects.filter(id_timetable=info_time, date=date_time)
    form = BookingForm

    error = ''
    if request.method == 'POST':
        form = BookingForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.id_timetable = time
            post.date = date_time
            if (post.row > 0 and post.row <= time.id_hall.amount_row) and (post.place > 0 and post.place <= time.id_hall.amount_place):
                if Booking.objects.filter(id_timetable=post.id_timetable, date=post.date, row=post.row, place=post.place):
                    error = "Место занято!"
                else:
                    post.save()
                    error = "Место успешно забронированно!"
            else:
                error = "Ошибка!"
        else:
            error = "Ошибка!"

    return render(request, 'main/hall.html', {'time': time, 'book': book, 'form': form, 'error': error, 'range_row': range(1, time.id_hall.amount_row + 1), 'range_place': range(1, time.id_hall.amount_place + 1)})


def contacts(request):
    if request.method == 'POST':
        form = ContactsForm(request.POST)
        if form.is_valid():
            form.save()

    form = ContactsForm
    return render(request, 'main/contacts.html', {'form': form})
