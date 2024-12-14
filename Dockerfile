FROM python:3.9-slim
RUN apt update && apt install -y curl
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["flask", "run", "--host=0.0.0.0"]

