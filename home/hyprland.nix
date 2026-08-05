{ pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    configType = "hyprlang";
    systemd.variables = [ "--all" ];


    settings = {
      monitor = ",preferred,auto,1";

      "$mod" = "SUPER";
      "$terminal" = "kitty";

      exec-once = [
        "waybar"
        "mako"
	"swaybg -i /etc/nixos/home/assets/c4-spring-sakura-sky.jpg"
        "polkit_gnome"
	"nm-applet"
	"blueman-applet"
      ];

      bind = [
        #apps
	"$mod, E, exec, dolphin"
	"$mod, S, exec, steam"
	"$mod, F, exec, firefox"

	# general
        "$mod, Q, exec, $terminal"
        "$mod, C, killactive"
        "$mod, M, exit"
        "$mod, V, togglefloating"
        "$mod, R, exec, wofi --show drun"
        "$mod, P, pseudo"
        "$mod, J, layoutmsg, togglesplit"
        
	# workspaces
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"

        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"

        # change window foci
	"$mod, left, movefocus, l"
	"$mod, right, movefocus, r"
	"$mod, up, movefocus, u"
	"$mod, down, movefocus, d"

	# change windo position & size
	"$mod SHIFT, left, movewindow, l"
	"$mod SHIFT, right, movewindow, r"
	"$mod SHIFT, up, movewindow, u"
	"$mod SHIFT, down, movewindow, d"
        ];

	bindm = [
	  "$mod, mouse:272, movewindow"
	  "$mod, mouse:273, resizewindow"
	];

      animations = {
        enabled = true;
        bezier = [ "myBezier, 0.05, 0.9, 0.1, 1.05" ];
        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };
    };
  };
}
