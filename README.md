# 装机配置

- [装机配置](#装机配置)
  - [终端](#终端)
    - [Iterm2](#iterm2)
    - [Wezterm](#wezterm)
    - [Kitty](#kitty)
    - [zsh](#zsh)
    - [oh-my-zsh](#oh-my-zsh)
    - [nerd-font](#nerd-font)
    - [复制 zsh 配置文件](#复制-zsh-配置文件)
    - [命令行工具](#命令行工具)
  - [vim](#vim)
    - [neovim](#neovim)
    - [复制 neovim 配置文件](#复制-neovim-配置文件)

## 终端

### Iterm2

https://iterm2.com/downloads.html

安装配色(Solarized Dark): https://github.com/mbadolato/iTerm2-Color-Schemes

### Wezterm

https://github.com/wez/wezterm

拷贝配置文件

```sh
cp ./wezterm/.wezterm.lua ~/.wezterm.lua
```

### Kitty

```sh
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

拷贝配置文件

```sh
cp -r ./kitty/ ~/.config/kitty
```

### zsh

```sh
brew install zsh
chsh -s $(which zsh)
```

### oh-my-zsh

https://github.com/robbyrussell/oh-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### nerd-font

https://github.com/ryanoasis/nerd-fonts

```sh
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

Iterm2 -> Preferences -> Profiles -> Text -> Non-Ascii-Font 选择 nerd-font 然后重启 Iterm2

### 复制 zsh 配置文件

```sh
cp .zshrc  ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
source ~/.zshrc
```

### 命令行工具

```sh
brew install fzf
$(brew --prefix)/opt/fzf/install

brew install thefuck

brew install autojump

brew install ranger

https://github.com/lsd-rs/lsd
```

## vim

### neovim

```sh
brew install neovim
```

### 复制 neovim 配置文件

```sh
cp nvim/init.lua ~/.config/nvim/init.lua
```

查看~/.config/nvim/init.lua 的内容，按照提示安装每个插件的依赖
