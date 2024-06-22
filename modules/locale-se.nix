{
  # English as language
  i18n.defaultLocale = "en_US.UTF-8";

  # Set font and keymap in tty
  console = {
    font = "Lat2-Terminus16";
    keyMap = "se-lat6";
  };

  # For X, should it be needed
  services.xserver.xkb.layout = "se";
}
