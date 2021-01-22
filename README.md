# Dotfiles

## Dependencies

```
yay -S bspwm dunst polybar ranger rofi sxhkd
yay -S picom pasystray nm-applet betterlockscreen clipit nerd-fonts-cascadia-code 
yay -S rofi-calc rofi-emoji
```

## Installation

1. Clone the repository: 
    ```
    git clone https://github.com/MaaxGr/dotfiles.git
    ```
2. Run the install script: 
    ```
    ./dotfiles.sh -i
   ```

## Configure Touchpad
1. Find out touchpad devicename <br>
   ```
    grep -e "Using input driver 'libinput'" /var/log/Xorg.0.log
   ```
2. Create XORG touchpad config
    ```
    Section "InputClass"
        Identifier "SYNA7DB5:00 06CB:7DB7 Touchpad"
        Driver "libinput"
        Option "Tapping" "on"
        Option "NaturalScrolling" "true"
    EndSection
    ```
    
## Sepcial env variables for kde applications

```
XDG_CURRENT_DESKTOP=KDE
QT_QPA_PLATFORMTHEME=kde
```
