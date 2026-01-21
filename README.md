# README for Username Validation Script

## Author Information
- **Name:** Mahika Gupta
- **Course:** CPSC 298 – Computer Science Colloquium
- **Assignment:** Username Validation
- **Date:** January 20, 2026

## Program Description
This script validates usernames entered by a user to ensure they follow the assignment rules. It repeatedly prompts for a username until the input is valid, then prints a success message and exits. The validation is done using a regular expression to check the allowed characters, starting character, and required length.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
The script uses a while loop to keep asking for a username until a valid one is entered. It checks each entry using grep -E with a regular expression that matches only usernames that start with a lowercase letter and contain only lowercase letters, digits, or underscores with a total length between 3 and 12 characters. The -E flag enables extended regular expressions, and output is redirected to /dev/null 2>&1 so grep runs silently and the script only uses the exit status to decide valid vs. invalid. If the username does not match, the script prints an error message and prompts again.

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
Valid usernames tested:

mahika (starts with lowercase, only lowercase letters, length 6)

m_3 (starts with lowercase, includes underscore and digit, length 3)

Invalid usernames tested:

MaHika (contains uppercase letters)

_mahika (does not start with a lowercase letter)

ab (too short; fewer than 3 characters)

thisusernameistoolong (too long; more than 12 characters)

a-b (contains an invalid character -)

I tested using the provided input file by running:

./username.sh < username-input

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]

## Resources
Class notes / lecture slides for bash scripting, while loops, and grep regular expressions

ShellCheck documentation (for linting and best practices)

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
