# Use the official Node.js image as the base image
FROM node:18

# expose port 8080 - localhost / 7963 - app
EXPOSE 443

# Set the working directory in the container
WORKDIR /

# Copy the application files into the working directory
COPY . /

# Install the application dependencies
RUN npm install

# Define the entry point for the container
CMD ["npm", "start"]
