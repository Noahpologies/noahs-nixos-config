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
	"awww-daemon"
        "polkit_gnome"
	"nm-applet"
	"blueman-applet"
      ];

      bind = [
        #apps
	"$mod, E, exec, kity -e yazi"
	"$mod, S, exec, steam"
	"$mod, F, exec, firefox"
	"$mod, o, exec, obsidian"

	# general
	"$mod, W, exec, waypaper"
        "$mod, Q, exec, $terminal"
        "$mod, C, killactive"
        "$mod, M, exit"
        "$mod, V, togglefloating"
        "$mod, R, exec, wofi --show drun"
        "$mod, P, pseudo"
        "$mod, J, layoutmsg, togglesplit"
	"$mod, A, fullscreen, 0"
	"$mod, F3, exec, brightnessctl set +5-%"
	"$mod, F4, exec, brightnessctl set +5%"

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

	# change window position & size
	"$mod SHIFT, left, movewindow, l"
	"$mod SHIFT, right, movewindow, r"
	"$mod SHIFT, up, movewindow, u"
	"$mod SHIFT, down, movewindow, d"
        ];

	bindm = [
	  "$mod, mouse:272, movewindow"
	  "$mod, mouse:273, resizewindow"
	];

	bindel = [
          ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"
          ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
          ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
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

      decoration = {
        blur = {
	  enabled = true;
	  size = 6;
	  passes = 3;
	};
      };

      # make waypaper less egregious
     windowrule = [
      {
        name = "waypaper-float";
        "match:class" = "^(waypaper)$";
        float = true;
        center = true;
        size = "1000 700";
        opacity = "0.90";
      }

      { # make various apps prettier
        name = "vstar";
        "match:class" = "^(org-aavso-tools-vstar-ui-VStar)$";
        opacity = "0.92 0.92";
        }

	{
	  name = "okular";
	  "match:class" = "^(org.kde.okular)$";
	  opacity = "0.92 0.92";
	  }
      ];

	#get natural scrolling
      input = {
        natural_scroll = false;
	touchpad = {
	  natural_scroll = true;
	};
      };
    };
  };
}
