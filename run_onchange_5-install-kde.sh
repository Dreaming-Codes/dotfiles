#!/bin/bash

set -x

echo "Installing kde packages"

# Declare an array of packages
packages=(
    # Plasma meta package
    plasma-meta
)

# Install the packages
paru -S --needed --noconfirm "${packages[@]}"
