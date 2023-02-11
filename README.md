# 装机配置

- [终端](#终端)
  - [Iterm2](#iterm2)
  - [zsh](#zsh)
  - [oh-my-zsh](#oh-my-zsh)
  - [nerd-font](#nerd-font)
  - [zplug](#zplug)
  - [复制 zsh 配置文件](#复制-zsh-配置文件)
  - [命令行工具](#命令行工具)
- [vim](#vim)
  - [neovim](#neovim)
  - [复制 neovim 配置文件](#复制-neovim-配置文件)
  - [安装插件管理器 vim-plug](#安装插件管理器-vim-plug)
  - [安装插件和依赖](#安装插件和依赖)

## 终端

### Iterm2

https://iterm2.com/downloads.html

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

### zplug

https://github.com/zplug/zplug

```sh
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

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
```

## vim

### neovim

```sh
brew install neovim
```

### 复制 neovim 配置文件

```sh
cp init.vim ~/.config/nvim/init.vim
```

### 安装插件管理器 vim-plug

https://github.com/junegunn/vim-plug

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 安装插件和依赖

```vim
:PluginInstall
```

查看~/.config/nvim/init.vim 的内容，按照提示安装每个插件的依赖
