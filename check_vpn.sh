#!/bin/bash
# check VPN status by nmcli command

VPN_NAME=home
RET=`nmcli con show --active | grep ${VPN_NAME} | wc -l`; echo -e "vpn.stasus\t${RET}\t$(date +%s)"
