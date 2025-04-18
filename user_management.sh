#!/bin/bash

while true; do
    echo "User Management Menu:"
    echo "1) Add User"
    echo "2) Delete User"
    echo "3) Exit"
    read -p "Choose an option [1-3]: " choice

    case "$choice" in
        1)
            read -p "Enter username to add: " user
            sudo useradd -m "$user" && echo "User $user added."
            ;;
        2)
            read -p "Enter username to delete: " user
            sudo userdel -r "$user" && echo "User $user deleted."
            ;;
        3)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done
