from django.contrib import admin
from crm.models import Schedule


class TripTypeAdmin(admin.ModelAdmin):
    list_display = ['flight_no', 'airline', 'trip_type']
    ordering = ['airline']


# Register your models here.
admin.site.register(Schedule, TripTypeAdmin)
