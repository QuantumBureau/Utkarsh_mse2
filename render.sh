#!/usr/bin/env bash
# render.sh

set -o errexit

echo "Installing Flutter..."

git clone https://github.com/flutter/flutter.git --depth 1 -b stable $HOME/flutter

export PATH="$PATH:$HOME/flutter/bin"

flutter --version
flutter config --enable-web

echo "Getting dependencies..."
flutter pub get

echo "Building Flutter Web App..."
flutter build web --release

echo "Build completed successfully!"