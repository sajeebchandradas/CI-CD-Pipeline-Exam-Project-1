# Start with Node.js 12.2.0 on Alpine Linux
FROM node:12.2.0-alpine 

# Set the working directory inside the container to /app
WORKDIR app

# Copy all files from the local directory to /app inside the container
COPY . .

# Install Node.js dependencies
RUN npm install

# Run tests using npm
RUN npm run test

# Expose port 8000 for external access
EXPOSE 8000

# Default command to start the application
CMD ["node", "app.js"]
