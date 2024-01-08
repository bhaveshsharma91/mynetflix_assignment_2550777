# Use the official Node.js 16 image as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock to the container
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the entire source code to the container
COPY . .

# Build the Next.js app
RUN yarn build

# Expose the port your app will run on
EXPOSE 3000

# Define the command to start the app
CMD ["yarn", "start"]







# # Use the official Node.js 16 image as the base image
# FROM node:16-alpine

# # Set the working directory inside the container
# WORKDIR /usr/src/app

# # Copy package.json and package-lock.json to the container
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the entire source code to the container
# COPY . .

# # Build the Next.js app
# RUN npm run build

# # Expose the port your app will run on
# EXPOSE 3000

# # Define the command to start the app
# CMD ["npm", "run", "start"]
