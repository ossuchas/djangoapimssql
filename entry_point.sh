#!/bin/sh

cd /app

python manage.py makemigrations
python manage.py migrate

echo "Django is ready.";
python manage.py runserver 0.0.0.0:8000
