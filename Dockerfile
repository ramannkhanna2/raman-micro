FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .


# Run both services
CMD sh -c "python prometheus_exporter.py & python app/main.py"
