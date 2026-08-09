## Hyprland essentials
yay -S --noconfirm hyprland hyprpaper waybar inotify-tools grim slurp wl-clipboard mako xdg-desktop-portal-hyprland xdg-user-dirs hyprpolkitagent rofi playerctl brightnessctl

## Terminal
yay -S --noconfirm kitty zsh curl

## Fonts
yay -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd

## Themes
yay -S --noconfirm qt5-wayland qt6-wayland qt6ct nwg-look bibata-cursor-theme arc-darkest-theme-git papirus-icon-theme

## File handling
yay -S --noconfirm nemo imv mpv

## Sourcing dotfiles
xdg-user-dirs-update
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi
chsh -s $(which zsh)
rm -rf ~/.zshrc
stow hyprland waybar kitty rofi zsh
