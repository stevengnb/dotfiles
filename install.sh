#!/bin/bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

symlink() {
  local src="$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  ln -sf "$src" "$dst"
  echo "linked $dst"
}

# Shell
symlink "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
symlink "$DOTFILES/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

# Tmux
symlink "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

# Kitty
symlink "$DOTFILES/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
symlink "$DOTFILES/kitty/theme.conf" "$HOME/.config/kitty/theme.conf"

# Neovim
symlink "$DOTFILES/nvim" "$HOME/.config/nvim"

# Pop Shell
symlink "$DOTFILES/pop-shell/config.json" "$HOME/.config/pop-shell/config.json"

# Ulauncher
symlink "$DOTFILES/ulauncher/settings.json" "$HOME/.config/ulauncher/settings.json"
symlink "$DOTFILES/ulauncher/shortcuts.json" "$HOME/.config/ulauncher/shortcuts.json"
symlink "$DOTFILES/ulauncher/extensions.json" "$HOME/.config/ulauncher/extensions.json"

# CopyQ
symlink "$DOTFILES/copyq/copyq.conf" "$HOME/.config/copyq/copyq.conf"
symlink "$DOTFILES/copyq/copyq-commands.ini" "$HOME/.config/copyq/copyq-commands.ini"
symlink "$DOTFILES/copyq/copyq_tabs.ini" "$HOME/.config/copyq/copyq_tabs.ini"

# Autostart
symlink "$DOTFILES/autostart/com.github.hluk.copyq.desktop" "$HOME/.config/autostart/com.github.hluk.copyq.desktop"
symlink "$DOTFILES/autostart/ulauncher.desktop" "$HOME/.config/autostart/ulauncher.desktop"

# dconf (requires dconf to be installed)
echo ""
echo "Loading dconf settings..."
dconf load /org/gnome/shell/keybindings/ < "$DOTFILES/dconf/shell-keybindings.ini"
dconf load /org/gnome/desktop/wm/keybindings/ < "$DOTFILES/dconf/wm-keybindings.ini"
dconf load /org/gnome/shell/extensions/pop-shell/ < "$DOTFILES/dconf/pop-shell.ini"
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < "$DOTFILES/dconf/media-keys.ini"

echo ""
echo "Done. Re-login or source ~/.zshrc to apply shell changes."
