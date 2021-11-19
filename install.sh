# Brew
if test ! $(which brew); then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install)"
fi

#Env
brew install wget
brew install git
brew install node

#Zsh & OhMyZsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
cp -rf config/.zshrc ~/.zshrc

#Apps
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask android-studio
brew install --cask spectacle

#Android
source ./android.sh

#Flutter
source ./flutter.sh

#MacOs Defaults
source ./config/macosdefaults.sh

#Vscode
source ./config/vscode.sh
