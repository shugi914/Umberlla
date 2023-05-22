#!/bin/bash

# Update system packages
sudo apt update

# Install Java (OpenJDK 11)
sudo apt install -y openjdk-11-jdk

# Add Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add Jenkins repository to package sources
echo "deb https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list

# Update system packages again to include Jenkins repository
sudo apt update

# Install Jenkins
sudo apt install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins service to start on boot
sudo systemctl enable jenkins

# Display initial Jenkins admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

