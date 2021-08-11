#!/bin/zsh

# Shell -----------------------------------------
mkdir ~/Github/stash/shell
cp ~/.zshrc ~/Github/stash/shell/zshrc
cp ~/.zshenv ~/Github/stash/shell/zshenv


# Plasma ----------------------------------------
mkdir ~/Github/stash/plasma
cp ~/.config/dolphinrc ~/Github/stash/plasma/
cp ~/.config/kwinrc ~/Github/stash/plasma/
cp ~/.config/konsolerc ~/Github/stash/plasma/
cp ~/.config/kdeglobals ~/Github/stash/plasma/
cp ~/.config/kglobalshortcutsrc ~/Github/stash/plasma/
cp ~/.config/khotkeysrc ~/Github/stash/plasma/

cp -r ~/.local/share/konsole ~/Github/stash/plasma/


# Neovim ----------------------------------------
cp -r ~/.config/nvim ~/Github/stash/

# Bin -------------------------------------------
cp -r ~/bin ~/Github/stash/

# Finish confirmation
echo "... done"
