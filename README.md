# vim-config
vim set up how I like it, to make it usable as an IDE.

# Symlink to the .vimrc file in this git repository

To allow you to check out this repository in a sensible
place (not your home directory!) just symlink the `.vimrc` file,

for example:

```bash
cd
ln -s ~/path/to/this/repo/.vimrc ~/.vimrc
```


# Install Vim plugin "fugitive".

```bash
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q

```
