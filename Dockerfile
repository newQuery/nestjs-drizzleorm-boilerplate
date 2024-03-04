# Use an official Node runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to leverage Docker cache
COPY package*.json ./

# Bundle app source inside the Docker image
COPY . .

# Your application's default port, adjust if it's different
EXPOSE 3000

# Define the command to run your app using CMD which defines your runtime
# Here we use the "start:dev" script from your package.json
CMD [ "npm", "run", "start:dev" ]
