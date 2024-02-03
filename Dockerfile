# Use the official Node.js image as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
# This step is optional if you don't have any dependencies
COPY package*.json ./

# Install any dependencies
# This step is optional if you don't have any dependencies
RUN npm install

# Copy the app.js file into the container at /usr/src/app
COPY run.mjs .
COPY OrangeMiner.arc4.json .
COPY .env .

# Run the app when the container launches
CMD ["node", "run.mjs"]
