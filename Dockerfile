# Step 1: Use an official Python runtime as the base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt into the container at /app
COPY requirement.txt requirement.txt

# Step 4: Install the dependencies
RUN pip install -r requirement.txt

# Step 5: Copy the current directory contents into the container at /app
COPY . .

# Step 6: Make the container's port 5000 available to the outside world
EXPOSE 5000

# Step 7: Define the command to run the app
CMD ["python", "app.py"]
