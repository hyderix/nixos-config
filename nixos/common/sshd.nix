{lib, ...}:
{
  services.openssh = {
    allowSFTP = true;
    enable = true;
    openFirewall = lib.mkDefault true;
    settings = {
      AllowGroups = ["ssh-access"];
      X11Forwarding = false;
    };
  };

  users.groups."ssh-access" = {};
}
