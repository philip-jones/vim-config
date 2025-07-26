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

Bit of bootstrapping - need to manually install the plugin manager...

You can read more here:

[Vundle.vim.git](https://github.com/VundleVim/Vundle.vim)

```bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then fire up vim and run the command 

`:PluginInstall` 

to install the plugins.

In the event any plugins are removed, run

`:PluginClean`

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

# Notes on Plugins

## Git plugin "vim-fugitive"

Fugitive is a Git wrapper for Vim, works really well.

You can do any normal git command using `:Git` such as:

```vim
:Git status
```

## Global search plugin "ctrlp"

Provides ability to find files anywhere in the current directory.

In normal mode, `CTRL-P` as the name suggests and start typing...

## File Browser nerdtree

Part of the setup to turn vim into an IDE.  

Press ? in the NERDTree window to learn how to use it.  It's worth it.
(? toggles nicely, so just hit ? again to hide the help)

## vim-surround

I've not started using it yet.  I intend to learn this one as it looks
like a significant coding productivity tool and is a standard feature 
in many modern IDEs:

[vim-surround](https://github.com/tpope/vim-surround)

## identpython

Enabling pep-8 compatible python:

[vim-scripts/identpython.vim](https://github.com/vim-scripts/indentpython.vim)

## flake-8

Runs the currently open file through Flake8, a static syntax and style checker for Python source code.

[vim-flake8](https://github.com/nvie/vim-flake8)

[Basic usage](https://github.com/nvie/vim-flake8?tab=readme-ov-file#usage)

Summarised as:

1. Open python file
2. Press `<F7>` to run flake8 on the file
3. Press `[Enter]` to jump to the next error

## YouCompleteMe

Excellent [tab] code completion.

[YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

Does require some setup for each language.

For me, this includes python, javascript, typescript coding.
Python 3 seems to be available regardless:

```bash
sudo apt update
sudo apt install build-essential cmake python3-dev

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --ts-completer
```

## ale

ALE (Asynchronous Lint Engine) is a plugin providing linting 
(syntax checking and semantic errors) 

It's relatively complex, so read:

[ale](https://github.com/dense-analysis/ale)

