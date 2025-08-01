# My personal dotfiles on Linux

![image](screenshot.png)

## ⚠️ WARNING

Please fork this repository if you want to customize it on your own.

## Prerequisites

- [zsh & oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- fuse/libfuse library
- stow
- curl

If you are on **WSL**, it is pretty much likely that you don't have ~/.config file yet, run this:
```
mkdir ~/.config
```

## Installation

Clone this repository:
```
git clone https://github.com/Yncy0/dotfiles.git ~/.dotfiles
```

If using SSH:
```
git clone git@github.com:Yncy0/dotfiles ~/.dotfiles && cd
```

Run the script:
```
cd ~/.dotfiles chmod +x setup.sh && ./setup.sh
```

## ZSH
If you wanted zsh to be your default shell, or just in case it doesn't switch automatically, just run:

```
source ~/.zshrc
chsh -s $(which zsh)
```

If oh-my-zsh not showing, run this line:
```
zsh
```
⚠️ *You might want to restart your terminal or reboot the system to apply the changes.*


## Project Structure
You can easily **stow** necessary files.
```
├── .config
│   ├── fastfetch
│   ├── nvim
│   ├── tmux
│   └── wezterm
├── .gitignore
├── bash
├── README.md
├── screenshot.png
├── setup.sh
└── zsh
```
