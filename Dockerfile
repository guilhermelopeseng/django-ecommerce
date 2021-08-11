FROM python:3.8

ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

RUN python3 -m pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .