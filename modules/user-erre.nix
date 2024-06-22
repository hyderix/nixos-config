{pkgs, ...}:
{
  users.users."erre" = {
    isNormalUser = true;
    extraGroups = ["wheel" "ssh-access"];
    packages = with pkgs; [helix];
    openssh.authorizedKeys.keys = [];
  };
}
