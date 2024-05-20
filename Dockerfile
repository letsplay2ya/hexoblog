FROM node:lts

# Set the working directory
WORKDIR /my-hexo

# Change ownership of the npm cache directory
RUN npm config set cache /home/node/.npm-cache --global

# Install Hexo CLI and hexo-deployer-git globally with --unsafe-perm option
RUN npm install -g hexo-cli --unsafe-perm \
    && npm install hexo-deployer-git --save

# Copy your blog files into the container
COPY . .

# Install project dependencies
RUN npm install

# Install text editors
RUN apt-get update && apt-get install -y \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Open the necessary port
EXPOSE 4000

# Entry point to clean and serve the blog
ENTRYPOINT [ "/bin/bash", "-c", "hexo clean && hexo server -p 4000" ]

