set number
set relativenumber
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

nnoremap <space> za

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'snakemake/snakefmt'
Plug 'snakemake/snakemake', {'rtp': 'misc/vim'}
Plug 'tmhedberg/SimpylFold'
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'

call plug#end()

" SimpylFold - Docstrings for code folding
let g:SimpylFold_docstring_preview=1
