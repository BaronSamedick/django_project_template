# django_project_template

Репозиторий с шаблоном архитектуры проекта Django:
- Менеджер зависимостей: Poetry
- База данных: PostgreSQL
- Развертывание: Docker

## Быстрый старт с Docker

1. Установите [Docker](https://docs.docker.com/engine/install/) на свою операционную систему
2. Клонируйте репозиторий на ваш ПК
```bash
$ git clone https://github.com/BaronSamedick/django_project_template.git
```
4. В консоли откройте директорию django_project_template
```bash
$ cd <your_path>/django_project_template
```
5. Разверните приложение при помощи команды
```bash
<your_path>django_project_template$ docker-compose up -d
```
6. Проверьте работоспособность приложения перейдя по адресу [http://localhost:8000/](http://localhost:8000/)


*Полезные ссылки:*
- [Архитектура универсального проекта Django](https://habr.com/ru/articles/692518/)
- [Quickstart: Compose and Django](https://github.com/docker/awesome-compose/blob/master/official-documentation-samples/django/README.md)
- [Запускаем PostgreSQL в Docker: от простого к сложному](https://habr.com/ru/articles/578744/)