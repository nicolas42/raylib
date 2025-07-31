#!/bin/bash

# Simplified script to generate an SSH key for GitHub on macOS

# Prompt for email
echo "Enter your email for the SSH key:"
read email

# Generate Ed25519 key
ssh-keygen -t ed25519 -C "$email" -f ~/.ssh/id_ed25519 -N ""

# Set permissions
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub

# Start SSH agent and add key
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

# Show loaded keys
ssh-add -l

# Instructions for GitHub
echo "Next steps:"
echo "1. Copy public key: cat ~/.ssh/id_ed25519.pub | pbcopy"
echo "2. Go to GitHub -> Settings -> SSH keys -> New SSH key, paste it, and save."
echo "3. Test: ssh -T git@github.com"