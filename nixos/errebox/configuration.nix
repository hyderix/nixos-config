{ config, pkgs, inputs, ... }:
{
  imports = with inputs.self.nixosModules; [
    sshd
  ];
}
