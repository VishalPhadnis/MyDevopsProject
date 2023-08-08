# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory within the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any required packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside the container
EXPOSE 80

# Define an environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
