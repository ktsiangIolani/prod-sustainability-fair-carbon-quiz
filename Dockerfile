FROM python:3.12-alpine

# Install system dependencies
RUN apk update && \
    apk add --no-cache gcc curl

# Copy requirements and install Python dependencies
COPY . ./
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5001

# Run the application
CMD ["python", "app.py"]
