# blocklist for transmission
This repo will help you do daily update blocklists, you can check https://gist.github.com/shmup/29566c5268569069c256 for detail and use `https://github.com/sahsu/transmission-blocklist/releases/download/untagged-45cbd464b74bc5dc1566/blocklist.gz` in your setting.

here's how to do settings.json:

add to you settings.json
```
"blocklist-enabled": true,
"blocklist-url": "https://github.com/sahsu/transmission-blocklist/releases/download/untagged-45cbd464b74bc5dc1566/blocklist.gz"
```

verify by command:
```
$ transmission-remote -n admin:password --blocklist-update
localhost:9091/transmission/rpc/ responded: "success"
```
