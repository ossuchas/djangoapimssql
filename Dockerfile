FROM python:3.7

# Configure timezone and locale
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV TZ Asia/Bangkok

WORKDIR /app
COPY requirements.txt .

RUN pip install python-dotenv
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/

EXPOSE 8000

#CMD ["python3", "app.py"]
RUN chmod +x entry_point.sh
CMD [ "./entry_point.sh" ]

