{ config, pkgs, inputs, ... }:
{
  imports = [
    ../common/sshd.nix
    ../common/user-erre.nix
    ../common/locale-se.nix
  ];
}
