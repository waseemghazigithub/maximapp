#!/bin/bash

# Import Microsoft keys
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list

# Update repos
apt-get update

# ACCEPT EULA and install driver
ACCEPT_EULA=Y apt-get install -y msodbcsql18