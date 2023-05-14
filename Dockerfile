# Select a base image / template (ex: ubuntu, nodejs) node:12 is the officially supported node.js base image
FROM node:12

# WORKDIR is similar to when you cd into a directory. Any subsequent instructions in our docker file will start from this directory
WORKDIR /app

# Install dependencies
COPY package*.json ./

# Like opening a terminal session and running installing our dependencies
RUN npm install

# After installing dependencies, now we can copy all our source code in local files to working directory
# BUT, ignore node_modules we don't want to copy this over to the image and override node modules we installed there
COPY . .

# Create a .dockerignore file -> similar to .gitignore

# Set environment variables
ENV PORT=8080

# We want to access node.js express app publicly (important: look into port forwarding)
EXPOSE 8080

# Can only have one of these PER docker file and it tells the container how to run the actual application
CMD ["npm", "start"]