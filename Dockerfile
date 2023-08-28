FROM node:16-alpine AS build

# Create app directory
WORKDIR /usr/src/app

# Copy all the files from the project’s root to the working directory
COPY . .

# Install dependencies
RUN npm install

# Build app
RUN npm run build

# Install nginx
FROM nginx:stable
COPY --from=build /usr/src/app/dist/angular-app /usr/share/nginx/html