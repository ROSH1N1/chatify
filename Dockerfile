# Use Node 22.20.0 (or newer)
FROM node:22.20.0

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies for backend and frontend
RUN npm install --prefix backend
RUN npm install --prefix frontend

# Build the frontend (Vite)
RUN npm run build --prefix frontend

# Expose port (change if needed)
EXPOSE 5000

# Start backend server
CMD ["npm", "run", "start", "--prefix", "backend"]
