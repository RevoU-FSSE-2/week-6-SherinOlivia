# Use the official Node.js img as the base image
FROM node:16

# Set Working Directory inside the container
WORKDIR /app

# Copy the Node.js Source Code into the container
COPY  . .

# Build the Node.js App inside the container
RUN npm install

# Expose the port that the Node.js app listens on
EXPOSE 3001

# Command to run the Node.js app
CMD ["node", "app.js"]