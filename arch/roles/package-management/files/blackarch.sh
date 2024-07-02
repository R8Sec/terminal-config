#!/usr/env/bin bash

# Enable multilib repository

curl -s https://blackarch.org/strap.sh -o /tmp/strap.sh
chmod +x /tmp/strap.sh
sudo /tmp/strap.sh
