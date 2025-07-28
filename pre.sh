#!/bin/bash

#Synchronize system time
echo "=== Starting system time synchronization ==="
sudo apt install -y ntpdate
sudo ntpdate pool.ntp.org
if [ $? -ne 0 ]; then
	    echo "Warning: Time synchronization failed, this may affect subsequent operations"
fi

# Update package index
echo -e "\n=== Starting package index update ==="
sudo apt update
#
# Install build dependencies
echo -e "\n=== Starting installation of build dependencies ==="
sudo apt install -y build-essential gcc-aarch64-linux-gnu libssl-dev bc flex bison libelf-dev

# Configure Git user information
echo -e "\n=== Please configure Git user information ==="
read -p "Enter your Git username: " git_name
read -p "Enter your Git email address: " git_email

git config --global user.name "$git_name"
git config --global user.email "$git_email"

echo "Current Git configuration:"
git config --global --get user.name
git config --global --get user.email

# Generate SSH key
echo -e "\n=== Generating SSH key ==="
# Use previou
sly entered email as key comment
ssh-keygen -t ed25519 -C "$git_email" -N "" -f ~/.ssh/id_ed25519 <<< y

# Display generated public key
echo -e "\nYour generated SSH public key is shown below. Please copy it to GitHub/GitLab etc.:"
cat ~/.ssh/id_ed25519.pub

echo -e "\n=== All operations completed ==="
echo "Note: The public key is displayed above. You can press Ctrl+C to copy it, then add it to your code hosting platform's SSH key settings."
