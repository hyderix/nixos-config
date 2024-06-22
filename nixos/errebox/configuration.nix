{ config, pkgs, inputs, ... }:
{
  imports = [
    ../common/sshd.nix
    ../common/user-erre.nix
    ../common/locale-se.nix
  ];

  networking.hostName = "errebox";

  system.stateVersion = "24.05";
}
