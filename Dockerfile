FROM python:3

RUN apt-get update

RUN pip install django==3.2 --break-system-packages

COPY . .

RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]


