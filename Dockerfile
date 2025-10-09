# ✅ Use Node 22.20.0 (satisfies Vite requirement)
FROM node:22.20.0

# Create app directory
WORKDIR /app

# Copy everything into the container
COPY . .

# Install dependencies
RUN npm install --prefix backend
RUN npm install --prefix frontend

# Build the frontend (Vite)
RUN npm run build --prefix frontend

# Expose backend port (change if needed)
EXPOSE 5000

# Start the backend
CMD ["npm", "run", "start", "--prefix", "backend"]

