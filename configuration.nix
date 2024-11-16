{ pkgs, ... }: {
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  console.keyMap = "fr-bepo";
  environment.systemPackages = with pkgs; [ vim ];
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH38Iwc5sA/6qbBRL+uot3yqkuACDDu1yQbk6bKxiPGP"
  ];
  users.users.demo = {
    isNormalUser = true;
    password = "passwd";
  };
  services.openssh.enable = true;
  system.stateVersion = "24.05";
}
