
FROM python:3.8-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
FROM openjdk:11
WORKDIR /app
COPY . .
ENTRYPOINT ["java", "-jar", "OrderService.jar"]
