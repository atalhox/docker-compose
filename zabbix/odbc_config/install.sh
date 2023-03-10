#!/bin/bash

# Update and upgrade system packages
apt-get update -y && apt-get upgrade -y

# Install necessary tools
tools="vim automake autoconf libtool build-essential"
apt-get install -y $tools

# Download and install the UnixODBC driver
odbc_config_dir="/usr/local/unixODBC/odbc_config"
odbc_dir="/usr/local"
odbc_file="unixODBC-2.3.11.tar.gz"
odbc_version_folder="unixODBC-2.3.11"
odbc_url="ftp://ftp.unixodbc.org/pub/unixODBC/$odbc_file"
odbc_default_name="unixODBC"

echo "Downloading UnixODBC driver from $odbc_url"
cd "$odbc_dir"
wget "$odbc_url"
gunzip "$odbc_file"
tar xvf "${odbc_file%.gz}"