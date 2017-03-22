set number
set laststatus=2

execute pathogen#infect()
syntax on
filetype plugin indent on

""" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

""" Powerline
set rtp+=$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
