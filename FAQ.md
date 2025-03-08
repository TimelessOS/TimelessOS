# FAQ

## Podman doesn't work
This is because podman isn't using standard systemd recommended UID/GID's by default, and you have to force it to use them.
```bash
echo $USER:524288:65536 | run0 tee /etc/subuid
echo $USER:524288:65536 | run0 tee /etc/subgid
```
