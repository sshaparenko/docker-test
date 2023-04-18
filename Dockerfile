
FROM python:3.9

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app.py app.py

EXPOSE 5000

CMD ["gunicorn", "--workers=2", "app:app", "--bind=0.0.0.0:5000"]