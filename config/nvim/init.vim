" repo: https://github.com/alsheuski/dotfiles
"

let mapleader = "\<Space>"
set number
set showcmd 
set expandtab
" set autowrite
au FocusLost * silent! wa
set nocompatible
"set termguicolors
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set clipboard+=unnamedplus
syntax enable
syntax on

" Remember cursor position between vim sessions
autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
" center buffer around cursor when opening files
autocmd BufRead * normal zz

nmap <silent> <Leader>w :w<CR>
nmap <silent> <Leader>q :q<CR>

source $HOME/.config/nvim/themes/Tomorrow-Night.vim
source $HOME/.config/nvim/plugins/plugins.vim

source $HOME/.config/nvim/plugins/ctrlp.vim
source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/emmet.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/indentline.vim
source $HOME/.config/nvim/plugins/deoplete.vim

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Code formating >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
noremap <Leader>f :Neoformat<CR>
"
" End code formation <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
