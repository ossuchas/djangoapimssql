from django.contrib.auth.models import User
from rest_framework import serializers
from crm.models import Schedule


class ScheduleSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Schedule
        fields = ('airline',
                  'flight_no',
                  'trip_type',
                  'departure_airport',
                  'arrival_airport',
                  'departure_date',
                  'return_date'
                  )
