# FAQ

## Podman doesn't work
This is because podman isn't using standard systemd recommended UID/GID's by default, and you have to force it to use them.
```bash
run0 echo $USER:524288:65536 >> /etc/subuid
run0 echo $USER:524288:65536 >> /etc/subgid
```