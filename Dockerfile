FROM python:3.8.2-alpine3.10

COPY requirements.txt requirements.txt
RUN pip install --requirement requirements.txt
