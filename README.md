# mackerel-plugins
util plugins for my environment

## /etc/mackerel-agent/mackerel-agent.conf

```
[plugin.metrics.vpn]
command = "bash PATH_TO_COMMAND/check_vpn.sh"

[plugin.metrics.temp]
command = "bash PATH_TO_COMMAND/get_temp.sh"
```
