# Build Stage
FROM node:alpine as builder

WORKDIR /app

# Copy only package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

# Production Stage
FROM nginx:alpine

# Copy the built static files from the build stage to the Nginx default public directory
COPY --from=builder /app/build/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
