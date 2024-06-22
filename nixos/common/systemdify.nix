#
# systemd options, to make system more coherent
# if i am using systemd, i might aswell use the whole thing :D
#
{lib, ...}:
{
  # Use systemd for the initial ramdisk
  boot.initrd.systemd.enable = lib.mkDefault true;

  # Use systemd-networkd for networking (translate script-based networking)
  networking.useNetworkd = lib.mkDefault true;
  systemd.network.enable = true;

  # Use resolved instead of resolvconf
  services.resolved.enable = lib.mkDefault true;
}
