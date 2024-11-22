# Use Python 3.8 as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
