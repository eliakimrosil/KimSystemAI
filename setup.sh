#!/bin/bash

# Create virtual environment
python -m venv venv

# Activate virtual environment
source venv/bin/activate

# Install requirements
pip install -r requirements.txt

echo "Setup complete. You can now run KimSystem AI CLI using:"
echo "./kim_cli.py"
