FROM python:3.9-slim

WORKDIR /app

COPY Application/ /app/

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

# Define environment variable
ENV NAME=Assignment2
ENV FLASK_ENV=development
ENV MONGO_HOST=mongo
ENV MONGO_PORT=27017

CMD ["python", "app.py"]

