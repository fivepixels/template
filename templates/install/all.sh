defaults write com.apple.dock "orientation" -string "left" && killall Dock
defaults write com.apple.dock "tilesize" -int "20" && killall Dock
defaults write com.apple.dock "autohide" -bool "true" && killall Dock
defaults write com.apple.dock "static-only" -bool "true" && killall Dock
defaults write com.apple.finder "QuitMenuItem" -bool "false" && killall Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" && killall Finder
defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" && killall Finder
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" && killall Finder
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true" && killall Finder
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" && killall Finder
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0" && killall Finder
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int “3” && killall Finder
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "true" && killall Finder
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true" && killall SystemUIServer
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"

# Install homebrew
touch ~/.zshrc
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# dev
brew install fish ripgrep fd eza bat fish stylua bun -q
brew install node nvm git yarn neovim neovide mysql-client ruby -q
brew install --cask iterm2 github sourcetree flutter visual-studio-code postman -q
brew install --cask google-chrome -q
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher
fisher install jethrokuan/z IlanCosman/tide@v5
rm -rf ~/.local/share/nvim/pckr
git clone https://github.com/lewis6991/pckr.nvim ~/.local/share/nvim/pckr/pckr.nvim

# productivity
brew install --cask alt-tab rectangle keycastr karabiner-elements -q
brew install --cask grammarly-desktop grammarly -q
brew install --cask canva miro whatsapp discord obs -q

# academic
brew install --cask microsoft-teams microsoft-word microsoft-outlook microsoft-onenote microsoft-excel microsoft-powerpoint onedrive -q

# downloading rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain none -y
source "$HOME/.cargo/env.fish"

git clone git@github.com:fivepixels/dotfiles.git ~/.config

tide configure

cd

echo "DONE! Installed everything!"

exit
