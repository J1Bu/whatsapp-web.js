# Use Node.js base image
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that your app will run on
EXPOSE 3000

# Start the application
CMD ["node", "whatsapp.js"]