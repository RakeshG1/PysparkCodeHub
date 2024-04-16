#!/bin/sh

# Conda Version
conda -V 

# List Existing Conda Environments in System
conda info --envs

# Update Conda
conda update conda

# Upgrade PIP
pip install --upgrade pip

# Remove Existing Old Env
conda env remove -n pyspark_env

# Create Conda Environment
conda create --name pyspark_env python=3.11 -y

# Activate Conda Environment
conda activate pyspark_env

# Check java version
# # If not installed, install Java
java --version
#openjdk 21.0.2 2024-01-16
#OpenJDK Runtime Environment (build 21.0.2+13-58)
#OpenJDK 64-Bit Server VM (build 21.0.2+13-58, mixed mode, sharing)

# Install Python Packages
pip install -r requirements.txt

# Uninstall Python Packages
pip uninstall -r requirements.txt

# Check Python Libraries
conda list 
pip freeze

# Conda Env Export 
conda env export > pyspark_env.yml

# Python Version
python --version

# Python Path
which python

# Deactivate Conda Environment
conda deactivate