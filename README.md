# NixOS VM with bootloader

```
nixos-rebuild build-vm-with-bootloader --flake .#my-vm
QEMU_NET_OPTS="hostfwd=tcp::2222-:22" ./result/bin/run-nixos-vm
```

then you can
```
ssh -p 2222 root@127.0.0.1  # with your SSH key
ssh -p 2222 demo@127.0.0.1  # with "passwd" password
```

after that, you can update configuration.nix (eg. add btop in systemPackages)

```
NIX_SSHOPTS="-p 2222" nixos-rebuild switch --flake .#my-vm --target-host root@localhost
```

and btop is available.

On reboot, 2 generations are available. they are both in /boot

BUT gen 2 (default) can't boot, as /dev/vda2 does not mount…
