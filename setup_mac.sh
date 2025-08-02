#!/bin/bash

# Disable Power Nap
sudo pmset -a powernap 0
# Disable Wake for Network Access
sudo pmset -a womp 0
# Cancel any existing wake events
sudo pmset repeat cancel
# Disable all scheduled wake events
sudo pmset schedule cancelall
