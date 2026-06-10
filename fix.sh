#!/usr/bin/env bash
set -e

# Fix duplicate apt sources and update
sudo tee /etc/apt/sources.list > /dev/null << 'EOF'
deb http://deb.debian.org/debian/ trixie main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian/ trixie main contrib non-free non-free-firmware

deb http://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
deb-src http://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware

deb http://deb.debian.org/debian/ trixie-updates main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian/ trixie-updates main contrib non-free non-free-firmware
EOF

sudo apt-get update

echo "Done. Now run:"
echo "  ./compile.sh build BOARD=odroidc4 BRANCH=current RELEASE=trixie"
