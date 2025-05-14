#!/bin/bash
# Update system
sudo yum update -y

# Install Nginx and Git
sudo yum install -y nginx git

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Remove default nginx files
sudo rm -rf /usr/share/nginx/html/*

# Clone your GitHub repo
git clone https://github.com/khawlagr/cloud-project-front.git

# Move built Angular files to nginx directory
sudo mv cloud-project-front/dist/client/browser/* /usr/share/nginx/html/

# Reload Nginx
sudo systemctl restart nginx
