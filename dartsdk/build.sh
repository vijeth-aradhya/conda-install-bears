#!/usr/bin/env bash


if [ "$(uname)" == "Darwin" ]; then

    brew tap dart-lang/dart
    brew install dart

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

    # Enable HTTPS for apt
    sudo apt-get update
    sudo apt-get install apt-transport-https
    
    # Get the Google Linux package signing key
    sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
    
    # Set up the location of the stable repository
    sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

    # Installs the latest stable version
    sudo apt-get update
    sudo apt-get install dart/stable

fi