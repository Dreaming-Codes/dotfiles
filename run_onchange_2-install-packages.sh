#!/bin/bash

echo "Installing packages"

# Declare an array of packages
packages=(
    # Shell
    fish

    # Terminal emulator
    alacritty

    # Window manager
    hyprland-nvidia

    # Browser
    thorium-browser-bin

    # Password manager
    bitwarden

    # Chromium extension (Adblocked since it's not in the google webstore)
    chromium-extension-adnauseam

    # Messaging application
    telegram-desktop
    whatsie-git
    signal-desktop
    armcord

    # Shell customization
    starship

    # Notification daemon
    dunst

    # File manager
    dolphin

    # Enhanced 'ls' command
    exa

    # Clipboard manager
    cliphist

    # Fonts
    ttf-font-awesome
    ttf-fira-sans
    ttf-fira-code
    ttf-firacode-nerd

    # Portals for desktop integration
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk # Needed for file picker popup

    # System info
    neofetch

    # Enhanced 'htop'
    btop

    # GUI text editor
    kate

    # Cursor theme
    bibata-cursor-theme

    # Icon theme
    kora-icon-theme

    # Wallpaper engine
    swww

    # Screen locker
    gtklock
    gtklock-userinfo-module

    # System bar
    waybar

    # For installing and managing the rust toolchain
    rustup

    # For installing crates.io stuff without compiling
    cargo-binstall

    # Update all packages across all package managers
    topgrade-bin

    # Thumbnail service implementing the thumbnail management D-Bus specification
    tumbler

    # Desktop Customization
    nitrogen # for wallpapers
    lxappearance # for theming
    breeze # for theming
    breeze-gtk # for theming

    # For login screen
    sddm

    # Authentication Agent
    polkit-kde-agent

    # Better cat
    bat

    # Better cd
    zoxide

    # Node manager
    volta-bin

    # For unzipping stuff
    unzip

    # For qt apps theming
    kvantum

    # For logout menu
    wlogout

    # Modal text editor
    helix

    # Screenshot tools
    grimblast-git

    # Application launcher
    rofi

    # Command finder utils
    find-the-command
)

# Install the packages
paru -S --needed --noconfirm "${packages[@]}"

# Setup default rust toolchain using rustup
rustup default stable

# Install node
volta install node

# Install bun
volta install bun

crates_packages=(
	# For generating theme colors from wallpaper
	wallust

	# For updating all cargo binaries
	cargo-update

	# Just for fun
	r-matrix
)

# Install the packages from crates.io
cargo binstall -y "${crates_packages[@]}"

echo "For now you still need to manually load unpacked extension in thorium from /usr/share/chromium-extension-adnauseam/"

