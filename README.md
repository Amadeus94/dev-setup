# Vim and Tmux Configuration Setup


#Pre requisites 
Install Vim Plugin Manager such as the one here:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```



#installation

```
cd vim-tmux-setup
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vimrc.plug ~/.vimrc.plug
```


# Add new Vim Plugins
All plugins are located in the .vimrc.plug file with the following format: 


```
call plug#begin('~/.vim/plugged')
Plug 'repository/name'
call plug#end()
```

# Install Plugins
Go into vim and use the `:PlugInstall` command.

#Vim Configs

## General Configs
- Enabled `set numbers`
- Enabled `syntax enable`
- set background to dark `set background=dark`

## Editing Configs
- Set the tab width to 4 spaces with `set tabstop=4`.
- Enabled auto-indentation with `set smartindent`.
- Enabled line wrapping with `set wrap`.

## Plugins
- Configured Vim-Plug for plugin management (call `plug#begin('~/.vim/plugged')` and `call plug#end()`).
- Installed `jiangmiao/auto-pairs` for auto-closing brackets and quotes.
- Installed `scrooloose/nerdtree` for a tree explorer.
- Installed `preservim/nerdcommenter` for easy code commenting.

#Tmux Configs
- **Prefix Key**: Changed the prefix key from the default `Ctrl-b` to `Ctrl-a` for better accessibility.
- **Vim-like Navigation**: Enables Vim-like navigation. For example, `Ctrl-a k` will select the pane above, and `Ctrl-a j` will select the pane below.
- **Pane Navigation**: Configured pane navigation to use `Alt + arrow keys` instead of the `default prefix + arrow keys` for easier maneuverability.
- **Split Panes**: Customized the split pane commands to use `Ctrl-a` | for *vertical splits* and `Ctrl-a` - for *horizontal splits* for quicker pane creation.
- **Mouse Support**: Enabled mouse support for easy window and pane resizing and selection.
- **Status Bar**: Customized the status bar to include helpful information like the current time, system load, and active pane name.
- **Window Renaming**: Added a shortcut for easier window renaming; now you just hit `Ctrl-a r`.
- **Copy Mode**: Changed the keys for entering copy mode to `Ctrl-a Esc` to better align with other shortcuts.

