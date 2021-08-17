#!/bin/zsh

# Shell -----------------------------------------
mkdir ~/Github/stash/shell
cp ~/.zshrc ~/Github/stash/shell/zshrc
cp ~/.zshenv ~/Github/stash/shell/zshenv

# Neovim ----------------------------------------
cp -r ~/.config/nvim ~/Github/stash/

# Bin -------------------------------------------
cp -r ~/bin ~/Github/stash/

# Finish confirmation
echo "... done"
