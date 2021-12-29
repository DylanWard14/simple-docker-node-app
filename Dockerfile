# Specify base image
FROM node:alpine

WORKDIR /usr/app

# Copy project files
COPY ./ ./

# Install dependencies
RUN npm install

# Default command
CMD ["npm", "start"]