# Specify base image
FROM node:alpine

# Create working directy
WORKDIR /usr/app

# Only copy the package.json file to stop packages needing to be rebuilt on src changes
COPY ./package.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY ./ ./

# Default command
CMD ["npm", "start"]