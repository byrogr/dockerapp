FROM python:3.8

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN useradd -ms /bin/bash admin

USER admin

WORKDIR /app

COPY app /app

CMD ["python", "app.py"]