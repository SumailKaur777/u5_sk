<<<<<<< HEAD
# Use the official Node.js 14 image as the base image
FROM node:20.11.0 AS builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install --silent

# Copy the rest of the application code to the working directory
COPY . .

# Build the production-ready application
RUN npm run build

# Serve the production build with nginx
FROM nginx:alpine

# Copy the build output from the builder stage to the nginx public directory
COPY --from=builder /app/build /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the nginx server
CMD ["nginx", "-g", "daemon off;"]
=======
# Use the official Node.js 14 image as the base image
FROM node:20.11.0 AS builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install --silent

# Copy the rest of the application code to the working directory
COPY . .

# Build the production-ready application
RUN npm run build

# Serve the production build with nginx
FROM nginx:alpine

# Copy the build output from the builder stage to the nginx public directory
COPY --from=builder /app/build /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the nginx server
CMD ["nginx", "-g", "daemon off;"]
>>>>>>> 9a11a12a01052d927fcc253069a6436b46bdb405
