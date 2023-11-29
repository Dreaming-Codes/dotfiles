#!/bin/bash

set -x

echo "Installing kde packages"

# Declare an array of packages
packages=(
    # Plasma meta package
    plasma-meta

    # Wayland support
    plasma-wayland-protocols
    plasma-wayland-session
)

# Install the packages
paru -S --needed --noconfirm "${packages[@]}"
