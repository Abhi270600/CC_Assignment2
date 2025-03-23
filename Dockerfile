FROM python:3.9-slim

WORKDIR /app

COPY Application/ /app/

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

# Define environment variable
ENV NAME=Assignment2
ENV FLASK_ENV=development

CMD ["flask", "run", "--host=0.0.0.0"]

