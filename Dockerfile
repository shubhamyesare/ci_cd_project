# Use Python image
FROM python:3.10-slim

WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Default command (just keep container running)
CMD ["python", "-c", "print('App container running')"]
