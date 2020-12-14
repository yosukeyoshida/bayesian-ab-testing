FROM python:3.6.12-buster

COPY ./pyproject.toml /tmp
COPY ./poetry.lock /tmp
WORKDIR /tmp
RUN pip install poetry
RUN poetry config virtualenvs.create false && poetry install

RUN mkdir -p /root/ab_testing
WORKDIR /root/ab_testing
