#!/bin/bash

# Step 1: Create the project and bypass the prompt
echo "Creating Elm project..."
yes | elm init

# Step 2: Install elm-ui and bypass the prompt
echo "Installing elm-ui..."
yes | elm install mdgriffith/elm-ui

# Step 3: Download Main.elm from GitHub
echo "Downloading Main.elm..."
curl -o src/Main.elm https://raw.githubusercontent.com/wcourtney31415/elm-template-2/main/src/Main.elm

# Step 4: Run elm reactor
echo "Running elm reactor..."
elm reactor

# Open localhost:8000 in the default browser (Linux)
xdg-open http://localhost:8000

# # Uncomment the following line for macOS
# open http://localhost:8000

# # Uncomment the following line for Windows (requires PowerShell)
# start http://localhost:8000
