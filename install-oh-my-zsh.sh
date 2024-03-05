#! /usr/bin/sh

# Install dependencies
sudo apt install git wget curl xclip

# Install zsh
sudo apt install zsh

# Make zsh default shell
chsh -s $(which zsh) $USER

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install zsh syntax highlighting
git clone  https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install starship prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo ""  >> ~/.zshrc
echo ""  >> ~/.zshrc
echo "# Enable Starship prompt in Zsh shell" >> ~/.zshrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
