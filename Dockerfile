# Use the official Node.js image as the base image
FROM node:14



# Create and change to the app directory
WORKDIR /usr/src/app

# Copy application dependency manifest files to the container image
COPY package*.json ./

# Install production dependencies
RUN npm install

# Copy local code to the container image
COPY . .

# Run the web service on container startup
CMD [ "npm", "start" ]

# Document that the service listens on port 8080
EXPOSE 8080
