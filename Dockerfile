FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# Health check
HEALTHCHECK --interval=30s --timeout=3s \\
  CMD curl -f http://localhost:5000/ || exit 1

# Run both services
CMD sh -c "python prometheus_exporter.py & python app/main.py"
