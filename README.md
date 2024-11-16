# NixOS VM with bootloader

```
nixos-rebuild build-vm-with-bootloader --flake .#my-vm
QEMU_NET_OPTS="hostfwd=tcp::2222-:22" ./result/bin/run-nixos-vm
```
