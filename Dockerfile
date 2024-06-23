# Use an official Node.js image as a base
FROM node:latest as build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React application with Vite
RUN npm run build

# Expose port 8000 to the outside world
EXPOSE 8000

# Start server when the container starts
CMD npm run start
