#!/bin/bash

# Update pip
echo "Updating pip..."
python3.12 pip install -U pip

# Install dependencies

echo "Installing project dependencies..."
python3.12 -m pip install -r requirements.txt

# Make migrations
echo "Making migrations..."
python3.12 manage.py makemigrations
python3.12 manage.py migrate 
#Install whitenoise
python3.12 manage.py whitenoise
# Collect staticfiles

echo "Build process completed!"