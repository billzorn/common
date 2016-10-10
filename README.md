common
======

Configs and stuff. Currently running stock Ubuntu with LXDE on VirtualBox.

Paths:

```
autostart   -> ~/.config/lxsession/LXDE/autostart
lxde-rc.xml -> ~/.config/openbox/lxde-rc.xml
ssh-config  -> ~/.ssh/config
```

Other Tips:

Look in /usr/share/xsessions to change the list of desktop sessions available at login.
Try using ibus-setup to free C-space for use in applications!
.profile contains an example of how to guard path manipulation from being duplicated by tmux.

On Ubuntu 16.04, try `sudo systemctl disable display-manager.service` to stop automatic launch of X on booting.
To disable lid sleep before lightdm login, try changing `#HandleLidSwitch=suspend` to `HandleLidSwitch=ignore` in `/etc/systemd/logind.conf`.
