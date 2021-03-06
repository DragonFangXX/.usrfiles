alias ls="ls --color=auto"
alias la="ls -a"
alias lal="ls -alh"
alias ll="ls -lh"
alias rm="rm -vI"
alias mv="mv -v"
alias rmdir="rmdir -v"
alias mkdir="mkdir -pv"

alias diff="diff --color=auto"
alias grep="grep --color=auto"

#Shell Maintenance
alias refresh="clear && source ~/.bashrc"
alias edtalias="vim ~/.bash_aliases"

#Disk Management
alias lfdisk="sudo fdisk -l"
alias pfdisk="sudo fdisk $1"

#Power options
alias logout="i3-msg exit"
alias shutdown="systemctl poweroff"
alias suspend="systemctl suspend"
alias restart="systemctl reboot"

#Multiple outputs
alias hdmidflt="xrandr --auto"
alias hdmi2mirror="xrandr --output HDMI2 --auto --same-as eDP1 --mode 1920x1080"
alias hdmi2right="xrandr --output HDMI2 --auto --right-of eDP1 --mode 1920x1080"
alias hdmi2left="xrandr --output HDMI2 --auto --left-of eDP1 --mode 1920x1080"
alias mvspacel="i3-msg move workspace to output left --mode 1920x1080"
alias mvspacer="i3-msg move workspace to output right --mode 1920x1080"

#System maintenance
alias powreport="sudo powertop --html && firefox-beta ~/powertop.html"
alias sysbackup="sudo tar cvpzf arch-linux-backup-$(exec date +%F).tgz ~/documents ~/pictures /etc/sudoers /etc/X11/xorg.conf.d/40-libinput.conf /etc/grub.d/40_custom /etc/udev/rules.d /etc/systemd/system /etc/netctl"
alias sysrestore="sudo tar -xvpzf $1 -C $2 --numeric-owner"
alias sysupdate="sudo pacman -Syu; aurupdate && pkill -RTMIN+4 i3blocks"
alias createusb="sudo dd bs=4M if=$1 of=$2 status=progress oflag=sync"
alias sysclean="sudo pacman -Rns $(pacman -Qtdq)"
alias pkginstall="sudo pacman -Syu $1"
alias pkgremove="sudo pacman -Rsc $1"

#Utilities
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias cppwd="xclip -selection c -r ~/documents/keepass/mp"
alias chgbkgrd="feh --bg-fill $1"
alias ytmpv="mpv --name pip $1"
alias wifi-switch="sudo netctl-auto switch-to $1"
