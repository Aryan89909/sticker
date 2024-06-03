# Use the official Python image as base
FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    TZ=UTC

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt

# Copy the bot script into the container
COPY sticker.py .

# Run the bot script when the container starts
CMD ["python3", "sticker.py"]
