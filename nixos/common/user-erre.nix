{pkgs, ...}:
{
  users.users."erre" = {
    isNormalUser = true;
    initialPassword = "erre";
    extraGroups = ["wheel" "ssh-access"];
    packages = with pkgs; [helix];
    openssh.authorizedKeys.keys = [];
  };
}
