FROM python:3.11-alpine3.19

    # python
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    \
    # pip
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    \
    # poetry
    POETRY_VERSION=1.6.1 \
    POETRY_HOME="/opt/poetry" \
    POETRY_CACHE_DIR='/var/cache/pypoetry' \
    POETRY_VIRTUALENVS_CREATE=false \
    POETRY_NO_INTERACTION=1


ENV PATH="$POETRY_HOME/bin:$PATH"


RUN apk add --no-check-certificate curl

RUN curl -k -sSL https://install.python-poetry.org | python3 -

WORKDIR /usr/src/django_project_template
COPY poetry.lock pyproject.toml ./

RUN poetry install

# Запуск тестового сервера
WORKDIR /usr/src/django_project_template/src
COPY src .