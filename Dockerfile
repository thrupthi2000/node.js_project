# 1. Use an official Node.js image as the base
FROM node:18

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy only package.json and package-lock.json to install dependencies
COPY package*.json ./

# 4. Install app dependencies
RUN npm install

# 5. Copy the rest of the application code
COPY . .

# 6. Expose the port your app runs on
EXPOSE 3000

# 7. Run the application
CMD ["npm", "start"]
