FROM python:3.7-alpine
MAINTAINER Studio 27

ENV PYTHONUNBUFFERED 1

COPY ./requierments.txt /requierments.txt
RUN pip install -r /requierments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
