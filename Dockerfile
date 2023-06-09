# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Build the Angular app
# RUN npm run build --prod

# Expose the port on which the app will run
EXPOSE 5000

# Start the Angular app
CMD ["npm", "start"]