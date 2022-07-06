FROM python:3.9-alpine3.12

RUN apk update
RUN apk upgrade --available

WORKDIR /app
COPY . /app/

ENV PYTHONUNBUFFERED 1
