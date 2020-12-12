FROM python:3.9-slim

RUN pip install --no-cache-dir poetry

WORKDIR /usr/src/app
COPY . .

RUN poetry install --no-dev

CMD ["poetry", "run", "gunicorn", "hello_app.wsgi", "-b", "0.0.0.0:8000"]
