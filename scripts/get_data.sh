#!/bin/bash

# Create the /data directory if it doesn't exist
echo "Creating the /data directory"
mkdir -p /data

# Download the compressed files for earning and flows
echo "Downloading compressed files"
wget -O /data/pseoe_all.csv.gz https://lehd.ces.census.gov/data/pseo/latest_release/all/pseoe_all.csv.gz
wget -O /data/pseof_all.csv.gz https://lehd.ces.census.gov/data/pseo/latest_release/all/pseof_all.csv.gz


# Unzip the downloaded files
echo "Unzipping files"
gzip -d /data/pseoe_all.csv.gz
gzip -d /data/pseof_all.csv.gz




