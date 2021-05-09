FROM python:3.8.3-alpine3.10

COPY requirements.txt requirements.txt
RUN pip install --requirement requirements.txt

RUN mkdir -p /work
WORKDIR /work

RUN addgroup yamllint && adduser -D -G yamllint yamllint
USER yamllint

RUN mkdir -p ~/.config/yamllint
COPY .yamllint.yaml ~/.config/yamllint/config
