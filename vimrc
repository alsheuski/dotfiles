
set number

" Setup dein --------------------------------------------------------
if (!isdirectory(expand("$HOME/.vim/repos/github.com/Shougo/dein.vim")))
	call system(expand("mkdir -p $HOME/.vim/repos/github.com"))
	call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.vim/repos/github.com/Shougo/dein.vim"))
endif

set nocompatible

" Required:
set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.vim'))
let pluginsExist = 0

call dein#add('Shougo/dein.vim')
call dein#add('haya14busa/dein-command.vim')

call dein#add('scrooloose/nerdtree')
call dein#add('vim-airline/vim-airline')
call dein#add('mattn/emmet-vim', {'on_ft': 'html'})

if dein#check_install()
	call dein#install()
endif
call dein#end()

filetype plugin indent on
" End setup dein


""" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


" Finding files
" Search down into subfolders
set path+=**

" Display all matching files when we tab complete
set wildmenu


