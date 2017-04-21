" repo: https://github.com/alsheuski/dotfiles
"
"
"

set number

" Setup dein --------------------------------------------------------
if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
	call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
	call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif

set nocompatible

" Required:
set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.config/nvim'))
let pluginsExist = 0

call dein#add('Shougo/dein.vim')
call dein#add('haya14busa/dein-command.vim')

call dein#add('elzr/vim-json', {'on_ft': 'json'})
call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})

call dein#add('scrooloose/nerdtree')
call dein#add('vim-airline/vim-airline')
call dein#add('mattn/emmet-vim', {'on_ft': 'html'})
call dein#add('Valloric/YouCompleteMe', {'build': './install.py'})

call dein#add('mhartington/oceanic-next')

if dein#check_install()
	call dein#install()
endif
call dein#end()

filetype plugin indent on
" End setup dein ----------------------------------------------------

" Let airline tell me my status
" set termguicolors
set noshowmode
set noswapfile
filetype on
set relativenumber number
set tabstop=2 shiftwidth=2 expandtab
set conceallevel=0

""" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Themes and colors -------------------------------------------------
syntax enable

" End Themes and colors ---------------------------------------------


" Finding files
" Search down into subfolders
set path+=**

" Display all matching files when we tab complete
set wildmenu
