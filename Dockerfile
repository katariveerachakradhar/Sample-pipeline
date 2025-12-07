# Use Node.js LTS
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json if exists
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source code
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
