#!/bin/bash

echo "Select which utility packages to install:"
echo "1. Docker"
echo "2. Git"
echo "3. Python3"
echo "4. Python3 + Ansible"
echo "5. Exit"

read -p "Enter your selections (1-5, separated by a space): " -a selections

# The case statements are nested within a loop to allow the user to make multiple selections
for selection in "${selections[@]}"
do
  case "$selection" in
    1)
      scripts_for_os/utilits/fedora/docker.sh
      ;;
    2)
      scripts_for_os/utilits/fedora/git.sh
      ;;
    3)
      scripts_for_os/utilits/fedora/python3.sh
      ;;
    4)
      scripts_for_os/utilits/fedora/python3+ansible.sh
      ;;
    5)
      # Exit the script
      exit 0
      ;;
    *)
      # Еrror message
      echo "Error: Invalid selection"
      exit 1
      ;;
  esac
done