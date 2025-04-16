#!/bin/bash

# Script to recursively replace /ITKWikiArchive/Wiki/ITK/ with /ITKWikiArchive/ in all files
# Usage: ./replace_links.sh [directory]

# Default to current directory if no argument provided
DIR="${1:-.}"

echo "Starting link replacement in directory: $DIR"
echo "This will replace '/Wiki/ITK/' with '/ITKWikiArchive/Wiki/ITK/' in all files"
echo "Creating backups of modified files with .bak extension"

# Count affected files before making changes
affected_files=$(find "$DIR" -type f -not -path "*/\.*" -exec grep -l "/Wiki/ITK/" {} \; | wc -l)
echo "Found $affected_files files containing links to replace"

# Check if we're on macOS or Linux/Unix for proper sed syntax
if [[ "$(uname)" == "Darwin" ]]; then
    # macOS requires an empty string after -i for in-place editing with backup
    find "$DIR" -type f -not -path "*/\.*" -exec sed -i '.bak' 's|/Wiki/ITK/|/ITKWikiArchive/Wiki/ITK/|g' {} \;
else
    # Linux/Unix version
    find "$DIR" -type f -not -path "*/\.*" -exec sed -i'.bak' 's|/Wiki/ITK/|/ITKWikiArchive/Wiki/ITK/|g' {} \;
fi

echo "Replacement complete. Original files saved with .bak extension."
