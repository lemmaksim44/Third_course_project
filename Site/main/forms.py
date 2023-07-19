from django.contrib.auth.models import User
from django.forms import ModelForm, TextInput, forms, Textarea

from .models import *
from django import forms


class BookingForm(ModelForm):
    class Meta:
        model = Booking
        fields = ["phone_number", "row", "place"]

        widgets = {
            "phone_number": TextInput(attrs={
                'class': 'input'
            }),
            "row": TextInput(attrs={
                'class': 'input'
            }),
            "place": TextInput(attrs={
                'class': 'input'
            }),
        }

    def clean_phone_number(self):
        phone_number = self.cleaned_data['phone_number']
        if phone_number.isnumeric():
            if len(phone_number) != 11:
                raise forms.ValidationError('Не верно задан номер!')
        else:
            raise forms.ValidationError('Не верно задан номер!')
        return phone_number


class registerform(ModelForm):
    username = forms.CharField(label='Номер телефона', widget=forms.TextInput)
    password = forms.CharField(label='Пароль', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Повторите пароль', widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = ('username', 'password')

    def clean_username(self):
        username = self.cleaned_data['username']
        if username.isnumeric():
            if len(username) != 11:
                raise forms.ValidationError('Не верно задан номер!')
        else:
            raise forms.ValidationError('Не верно задан номер!')
        return username

    def clean_password2(self):
        cd = self.cleaned_data
        if len(cd['password2']) >= 8:
            if cd['password'] != cd['password2']:
                raise forms.ValidationError('Пароли не совпадают!')
        else:
            raise forms.ValidationError('Слишком короткий пароль!')
        return cd['password2']


class ContactsForm(ModelForm):

    class Meta:
        model = Contact
        fields = ('name', 'email', 'text')
        widgets = {
            'text': Textarea(attrs={
                'class': 'textarea',
                'placeholder': 'Введите текст'
            })
        }
