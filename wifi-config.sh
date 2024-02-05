#!/bin/sh

SSID="ZTE_562F7A"
PASSWORD="Mahmoud@01011"

connmanctl enable wifi
connmanctl scan wifi
connmanctl services | grep "$SSID" | awk '{print $1}' | xargs connmanctl connect wifi_${SSID}_managed_psk
