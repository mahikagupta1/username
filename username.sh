#!/bin/bash
# username.sh -- validate usernames

# Username rules (for this assignment):
# - Only lowercase letters (a-z), digits (0-9), and underscore (_)
# - Must start with a lowercase letter
# - Must be 3 to 12 characters long

USERNAME_REGEX='^[a-z][a-z0-9_]{2,11}$'

echo "Username rules:"
echo "1) Only lowercase letters (a-z), digits (0-9), and underscore (_)"
echo "2) Must start with a lowercase letter"
echo "3) Must be between 3 and 12 characters long"
echo

# If the script is being used interactively (typing into terminal)
if [ -t 0 ]; then
  while true; do
    read -r -p "Enter a username: " USERNAME

    if [[ $USERNAME =~ $USERNAME_REGEX ]]; then
      echo "Thank you. '$USERNAME' is a valid username."
      exit 0
    else
      echo "Invalid username. Please try again."
      echo
    fi
  done
else
  # If input is redirected (ex: ./username.sh < username-input)
  while IFS= read -r USERNAME; do
    if [[ $USERNAME =~ $USERNAME_REGEX ]]; then
      echo "$USERNAME -> Valid username"
    else
      echo "$USERNAME -> Invalid username"
    fi
  done
fi

