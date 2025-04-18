#!/bin/bash

# Ensure the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root (use sudo)"
    exit 1
fi

# Prompt for username
read -p "Enter the new username: " username

# Check if user already exists
if id "$username" &>/dev/null; then
    echo "Error: User '$username' already exists."
    exit 1
fi

# Prompt for password (silently)
read -s -p "Enter password for $username: " password
echo
read -s -p "Confirm password: " password2
echo

# Confirm passwords match
if [ "$password" != "$password2" ]; then
    echo "Error: Passwords do not match."
    exit 1
fi

# Create the user with a home directory
useradd -m "$username"
if [ $? -ne 0 ]; then
    echo "Error: Failed to create user '$username'."
    exit 1
fi

# Set the password securely
echo "$username:$password" | chpasswd

# Force password change on first login
chage -d 0 "$username"

echo "✅ User '$username' created successfully."
echo "🔐 Password set and will be required to change on first login."
