# mackerel-plugins
util plugins for my environment

- get VPN status by nmcli
- measure CPU Core temprature by lm-sensors


## /etc/mackerel-agent/mackerel-agent.conf

```
[plugin.metrics.vpn]
command = "bash PATH_TO_COMMAND/check_vpn.sh"

[plugin.metrics.temp]
command = "bash PATH_TO_COMMAND/get_temp.sh"
```
