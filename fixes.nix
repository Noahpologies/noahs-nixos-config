# fixes specific to my stupid laptop

{ config, pkgs, ...}:

{
  boot.kernelParams = [
    "pcie_aspm=off" # was killing my wifi card
  ];

  # wrong antenna was default, and jack detection was inverted
  boot.extraModprobeConfig = ''
    options rtw88_8723de ant_sel=1
    options snd_soc_sof_es8336 quirk=0x41
  '';

  # turn on the mixer switches that default to off on boot
  services.udev.extraRules = ''
    SUBSYSTEM=="sound", ACTION=="change", KERNEL=="card0", \
    RUN+="${pkgs.alsa-utils}/bin/amixer -c 0 set 'Left Headphone Mixer Left DAC' on", \
    RUN+="${pkgs.alsa-utils}/bin/amixer -c 0 set 'Right Headphone Mixer Right DAC' on"
  '';

  # change default sink
  services.pipewire.wireplumber.extraConfig."51-default-sink" = {
    "default.configured-audio-sink" = "alsa_output.pci-0000_00_0e.0-platform-sof-essx8336.HiFi__Speaker__sink";
  };
}
