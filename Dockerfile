# ---- 1. The 'Build' Stage ----
# Use a Node.js base image to build the app
FROM node:18-alpine AS builder

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install all dependencies
RUN npm ci

# Copy the rest of the app's source code
COPY . .

# Run the SvelteKit build command
RUN npm run build

# Prune development dependencies for a smaller final image
RUN npm prune --production

# ---- 2. The 'Deploy' Stage ----
# Use a smaller, "from scratch" base image for the final container
FROM node:18-alpine

WORKDIR /app

# Copy the built app and node_modules from the 'builder' stage
COPY --from=builder /app/build ./build
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json

# Expose the port SvelteKit will run on (default is 3000)
ENV PORT 3000
EXPOSE 3000

# Set the command to start the Node.js server
CMD ["node", "build/index.js"]
