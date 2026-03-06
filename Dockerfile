FROM node:18

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Expose application port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]