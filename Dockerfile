# Use an official Python runtime as a parent image
FROM python:3.11.4-slim

# Set the working directory in the container
WORKDIR /app

# Copy the contents of the virtual environment into the container
COPY .  /app

# Install any additional packages or dependencies if needed
RUN pip install -r requirements.txt
# RUN apt-get update && apt-get install -y tesseract-ocr poppler-utils

# Expose the port your Flask app runs on
EXPOSE 5000

# Define the command to run your Flask application
CMD ["python3", "api.py"]
