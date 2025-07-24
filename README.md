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
ln -s ~/path/to/this/repo/.vimrc ~/.vimrc
```

# Install Vundle (Vim Plugin Manager)

```bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then fire up vim and run the command `:PluginInstall` to install the plugins

# Install Github Copilot plugin 

[Copilot in Github](https://github.com/github/copilot.vim)

```bash
git clone --depth=1 https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
```

# Install Vim / Git plugin "fugitive".

Fugitive is a Git wrapper for Vim, allowing you to run Git commands.
Works fine, but I'm currently not using it much.

[Fugitive in Github](https://github.com/tpope/vim-fugitive)

```bash
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q

```

# To enable vim shortcuts in the terminal

Edit the file `~/.inputrc` and add the following line:

```bash
set editing-mode vi
```
