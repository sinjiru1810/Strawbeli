from django.contrib import admin

# Register your models here.
from .models import Dagangan, Keranjang, Order

admin.site.register(Dagangan)
admin.site.register(Keranjang)
admin.site.register(Order)