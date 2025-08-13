# Use the official Python image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the dependencies files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project
COPY . .

# Expose the port (the same as Django by default)
EXPOSE 8000

# Command to run the server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]