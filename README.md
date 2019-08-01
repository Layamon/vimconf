# vimconf
vim配置，工作环境为osx下的c++编程，如果其他环境需要调整

### Dependencies

```bash
brew install ack ctags cscope
```
## Installation

1. Backup your old vim configuration files:

        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig

2. Clone and install this repo:

        git clone https://github.com/yummyliu/vimconf.git ~/.vim
        ln -s ~/.vim/vimrc ~/.vimrc

3. Setup `Vundle`:

        git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

4. Install bundles. Launch vim(ignore the errors and they will disappear after installing needed plugins)and run:

        :PluginInstall

5. YouCompleteMe

[vimawesome](https://vimawesome.com/plugin/youcompleteme#installation)

