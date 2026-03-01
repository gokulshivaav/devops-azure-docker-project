# Dockerfile
FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the entire application including templates
COPY . .

CMD ["python", "app.py"]
