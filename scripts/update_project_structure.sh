#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Define the output file
OUTPUT_FILE="docs/project_structure.md"

# Check if tree command is available
if ! command -v tree &> /dev/null
then
    echo "tree command could not be found. Please install it to use this script."
    exit 1
fi

# Generate the project structure using tree command
# Exclude common directories and files that don't need to be in the documentation
PROJECT_STRUCTURE=$(tree -L 3 --dirsfirst --charset=ascii -I "venv|__pycache__|*.pyc|*.pyo|*.pyd|*.egg-info|.git|.idea|.vscode|.DS_Store")

# Create the Markdown content
MARKDOWN_CONTENT="# Project Structure

\`\`\`
$PROJECT_STRUCTURE
\`\`\`

This project structure was auto-generated on $(date).

## Directory Explanations

- \`src/\`: Contains the main source code for the project.
- \`tests/\`: Contains all the test files.
- \`docs/\`: Contains project documentation.
- \`examples/\`: Contains example input files.
- \`outputs/\`: Directory for generated output projects.
- \`scripts/\`: Contains utility scripts.
- \`config/\`: Contains configuration files.

Please refer to the README.md file in each directory for more detailed information about its contents and purpose."

# Write the Markdown content to the output file
echo "$MARKDOWN_CONTENT" > "$OUTPUT_FILE"

echo "Project structure has been updated in $OUTPUT_FILE"