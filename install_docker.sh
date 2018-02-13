#!/bin/bash

# Install docker
curl -sSL https://get.docker.com | sh

# Use docker as non-root user
sudo usermod -aG docker pi

# Install ctop
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7/ctop-0.7-linux-arm -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop
