sudo apt-get install libpq5=14.4-0ubuntu0.22.04.1 -y --allow-downgrades
sudo apt-get install libpq-dev python3-dev -y

poetry init

poetry add django==3.2.14 django-environ djangorestframework django-cors-headers drf-spectacular uvicorn redis celery django-celery-beat gunicorn psycopg2

poetry add --dev mypy django-stubs pytest pytest-sugar djangorestframework-stubs flake8==4.0.1 flake8-isort coverage black pylint-django pylint-celery pre-commit factory-boy django-debug-toolbar django-coverage-plugin pytest-django

poetry export -f requirements.txt --output requirements.txt
