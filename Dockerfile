# Specify the base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    build-essential \

# Copy the application files
COPY . .

# Expose the application's port
EXPOSE 3000

# Configure the application
CMD ["npm", "start"]
