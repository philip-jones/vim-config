# vim-config
vim set up how I like it, to make it usable as an IDE.

Selfishly, I'm only considering this for use within a Linux
environment, however I am linking to the relevant documentation
for each plug etc which should provide the relevant information
to use this in other contexts.

The .vimrc file is very much set up for Linux and may be largely
useless outside this context.

Credit where credit is due, most of this setup was inspired or 
taken from the RealPython article:

[VIM and Python - A Match Made in Heaven](https://realpython.com/vim-and-python-a-match-made-in-heaven/)

Some of the instructions below are taken directly from that article, to allow
efficient setup on a new machine.




# Symlink to the .vimrc file in this git repository

To allow you to check out this repository in a sensible
place (not your home directory!) just symlink the `.vimrc` file,

for example:

```bash
cd
ln -s ~/path/to/this/repo/.vimrc

# Set up tmux to work well with vim and not change the background colour
ln -s ~/path/to/this/repo/.tmux.coonf

# Enable vim shortcuts in the terminal
ln -s ~/path/to/this/repo/.inputrc
```

# Install Vundle (Vim Plugin Manager)

```bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then fire up vim and run the command `:PluginInstall` to install the plugins

# Install Github Copilot plugin 

The Copilot plugin requires that node is a recent version.

Install & set the default version of node using nvm such as:

```bash
nvm list-remote

# Select the latest stable (LTS) version, then install and set to default:

nvm install 22.17.1
nvm alias default 22.17.1
```

[Copilot in Github](https://github.com/github/copilot.vim)

```bash
git clone --depth=1 https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
```

Then set up / log in to Copilot on Github.
Start up vim then call `:Copilot setup`

# Notes on Vim / Git plugin "fugitive".

Fugitive is a Git wrapper for Vim, works really well.

You can do any normal git command using `:Git` such as:

```vim
:Git status
```

