from django.contrib import admin
from django.contrib.auth.models import Group

from .models import *


admin.site.register(Cinema)
admin.site.register(Timetable)
admin.site.register(Hall)
admin.site.register(Booking)
admin.site.register(Contact)
admin.site.unregister(Group)
