# Use the official Node.js image as the base image
FROM node:latest

RUN mkdir /root/app
# Set the working directory in the container
WORKDIR /root/app

# Copy the application files into the working directory
COPY . /root/app/

# Install the application dependencies
RUN npm install -g serve

# Expose port 3000
EXPOSE 3000

# Define the entry point for the container
CMD serve -s build