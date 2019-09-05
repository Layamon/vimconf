# Usage
对于C++用户的vim配置

# edit

![](image/vim-edit.png)

# make

![](image/vim-make.png)

# debug

![](image/vim-gdb.png)

### Dependencies
Compile Vim with `--enable-pythoninterp` and `--enable-rubyinterp` to enable powerful syntax completion supplied by neocomplcache.

```bash
yum install ctags                    # Fedora
emerge ctags                         # Gentoo
brew install ack ctags               # OS X
```
## Installation

1. Backup your old vim configuration files:

        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig

2. Clone and install this repo:

        git clone https://github.com/yummyliu/vimrc.git ~/.vim
        ln -s ~/.vim/vimrc ~/.vimrc

3. Setup `Vundle`:

        git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

4. Install bundles. Launch vim(ignore the errors and they will disappear after installing needed plugins)and run:

        :PluginInstall

Thst's it!

## How to manage this vimrc?

All plugins are listed in file `vundles.vim` with detailed comments, just add plugins as you like.

1. `:PluginClean` to clean up unused plugins
2. `:PluginInstall` to install newly added plugins
3. `:PluginInstall!` to upgrade all plugins

Other configurations are also well organized in vimrc.

## Known issues

* Compeletions are not well supported for statically typed languages(c/c++)
* Snippets are not shown in completions popups
* May has some conflicts with GVIM

