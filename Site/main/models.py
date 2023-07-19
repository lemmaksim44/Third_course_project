from django.db import models


class Cinema(models.Model):
    id_cinema = models.AutoField('ID', primary_key=True, serialize=False)
    image = models.ImageField('Изображение', upload_to='image')
    title = models.CharField('Название фильма', max_length=100)
    genre = models.CharField('Жанр', max_length=100)
    country = models.CharField('Страна', max_length=100)
    director = models.CharField('Режиссер', max_length=100)
    actors = models.CharField('Актеры', max_length=500)
    duration = models.CharField('Время', max_length=20)
    age_limit = models.CharField('Возрастное ограничение', max_length=5)
    description = models.TextField('Описание')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Фильм'
        verbose_name_plural = 'Фильмы'


class Hall(models.Model):
    id_hall = models.AutoField('ID', primary_key=True, serialize=False)
    name_hall = models.CharField('Название зала', max_length=100)
    amount_row = models.IntegerField('Количество рядов')
    amount_place = models.IntegerField('Количество мест в ряду')

    def __str__(self):
        return self.name_hall

    class Meta:
        verbose_name = 'Кинозал'
        verbose_name_plural = 'Кинозалы'


class Timetable(models.Model):
    id_timetable = models.AutoField('ID', primary_key=True, serialize=False)
    id_cinema = models.ForeignKey(Cinema, verbose_name='Название фильиа', on_delete=models.CASCADE)
    id_hall = models.ForeignKey(Hall, verbose_name='Зал', on_delete=models.CASCADE)
    time = models.TimeField('Время')
    price = models.IntegerField('Цена')

    def __str__(self):
        return str(self.id_cinema.title)

    class Meta:
        verbose_name = 'Расписание'
        verbose_name_plural = 'Расписания'


class Booking(models.Model):
    id_booking = models.AutoField('ID', primary_key=True, serialize=False)
    id_timetable = models.ForeignKey(Timetable, verbose_name='Название фильма', on_delete=models.CASCADE)
    date = models.DateField('Дата')
    phone_number = models.CharField('Номер телефона', max_length=11)
    row = models.IntegerField('Ряд')
    place = models.IntegerField('Место')

    def __str__(self):
        return str(self.phone_number)

    class Meta:
        verbose_name = 'Бронирование'
        verbose_name_plural = 'Бронирование'


class Contact(models.Model):
    id_contact = models.AutoField('ID', primary_key=True, serialize=False)
    name = models.CharField('ФИО', max_length=100)
    email = models.EmailField('Email')
    text = models.TextField('Текст')

    def __str__(self):
        return str(self.name)

    class Meta:
        verbose_name = 'Сообщение'
        verbose_name_plural = 'Сообщения'
