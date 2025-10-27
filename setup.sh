#!/bin/bash

# Setup script for VRP-RL project with modern Python and TensorFlow

echo "Setting up VRP-RL project with Python 3.12 and TensorFlow 2.x..."

# Check if Python 3.12 is available
if ! command -v python3.12 &> /dev/null; then
    echo "Python 3.12 not found. Please install Python 3.12 first."
    echo "On Ubuntu/Debian: sudo apt install python3.12 python3.12-venv python3.12-dev"
    echo "On Arch Linux: sudo pacman -S python312"
    exit 1
fi

# Create virtual environment
echo "Creating virtual environment..."
python3.12 -m venv .venv

# Activate virtual environment
echo "Activating virtual environment..."
source .venv/bin/activate

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "Installing requirements..."
pip install -r requirements.txt

echo "Setup complete!"
echo "To activate the virtual environment, run: source .venv/bin/activate"
echo "To run the project, use: python main.py --task=vrp20"
