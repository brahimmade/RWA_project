from django.contrib import admin
from .models import Profile, Notification, Message

# Register your models here.

admin.site.register(Profile)
admin.site.register(Notification)
admin.site.register(Message)
