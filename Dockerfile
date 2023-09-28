# Step 1: Set the base image
FROM node:16

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy package files
COPY ./node/package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy application files
COPY ./node/*.js ./

# Step 6: Expose port (if needed
EXPOSE 8000

# Step 7: Define start command
CMD [ "npm", "start" ]
