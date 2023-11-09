#!/bin/sh

# Create a temporary file
tempfile="$(mktemp)"
# Ensure the temporary file is removed upon exit
trap 'rm -rf "${tempfile}"' EXIT

# Read standard input into the temporary file
cat > "${tempfile}"

# Check if the file is empty
if [ ! -s "${tempfile}" ]; then
    echo -e "# Here is your hyprland custom startup script, this will not be synched" > "${tempfile}"
fi

# Display the content of the temporary file
cat "${tempfile}"
