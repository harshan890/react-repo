# Firt uses the Node base image
FROM node:26.1.0

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose Vite port
EXPOSE 5173

# Run dev server on all interfaces
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
