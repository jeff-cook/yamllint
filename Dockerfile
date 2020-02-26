FROM python:3.8.1-alpine3.10

COPY requirements.txt requirements.txt
RUN pip install --requirement requirements.txt

RUN mkdir -p /root/.config/yamllint
COPY .yamllint.yaml /root/.config/yamllint/config
