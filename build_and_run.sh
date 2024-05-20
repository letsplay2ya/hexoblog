#!/bin/bash

# Build the Docker image
docker build -t my-hexo-blog .

# Check if a container with the name 'hexo-blog' is already running and stop it
if [ $(docker ps -a -q -f name=hexo-blog) ]; then
    docker rm -f hexo-blog
fi

# Run the Docker container
docker run -d -p 4000:4000 --name hexo-blog my-hexo-blog

