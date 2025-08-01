set nocompatible              " required
filetype off                  " required

" All of the below comes from:
" https://realpython.com/vim-and-python-a-match-made-in-heaven/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Surround code automatically
Plugin 'tpope/vim-surround'

" Python pep-8 formatting
Plugin 'vim-scripts/identpython.vim'

" Code completion
Plugin 'Valloric/YouCompleteMe'

" LINTing plugin
Plugin 'dense-analysis/ale'

" Run Python from vim
Plugin 'nvie/vim-flake8'

" Colour scheme
Plugin 'jnurmine/Zenburn'

" Colour scheme
Plugin 'altercation/vim-colors-solarized'

" Status line at the bottom of the vim window
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" NERDTree file browser
Plugin 'scrooloose/nerdtree'

" Global search using CTRL-P
Plugin 'kien/ctrlp.vim'

" Syntax formatting for prisma schema file
Plugin 'prisma/vim-prisma'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix
" set ttymouse=xterm2
set ttymouse=sgr
set mouse=n

au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css, *.ts, *.tsx, *.jsx:
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py3 3
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")

set nu

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

