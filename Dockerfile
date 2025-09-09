# Use official lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Expose Flask default port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
