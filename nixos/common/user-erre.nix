{pkgs, ...}:
{
  users.users."erre" = {
    isNormalUser = true;
    initialPasswordHash = "$y$j9T$I6MeqBGtpLepoMdQO3ccw0$zaA5hlZYCX/NQZlgURIa.ucaq4JKVrMcAa8jvUPSAo8";
    extraGroups = ["wheel" "ssh-access"];
    packages = with pkgs; [helix];
    openssh.authorizedKeys.keys = [];
  };
}
