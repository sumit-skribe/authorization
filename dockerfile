# Use an optimized Node.js base image
FROM node:current-alpine

# Set the working directory
WORKDIR /app

# Copy the rest of your application code
COPY . .

# Install dependencies
RUN npm install

# This instruction runs the build script defined in the package.json file using npm.
# It is typically used to compile the source code and prepare the application for production.
RUN npm run build

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm","run","start"]