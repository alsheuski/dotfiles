" repo: https://github.com/alsheuski/dotfiles
"
"
"
" NeoVim >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
set number
set showcmd 
set expandtab
set nocompatible
"set termguicolors
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set clipboard+=unnamedplus
"
" End NeoVim <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" Setup dein --------------------------------------------------------
if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
  call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
  call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif


" Required:
set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.config/nvim'))
let pluginsExist = 0

call dein#add('Shougo/dein.vim')
call dein#add('haya14busa/dein-command.vim')

call dein#add('othree/html5.vim')

" Fuzzy file, buffer, mru, tag, etc finder.
call dein#add('ctrlpvim/ctrlp.vim')

" A (Neo)vim plugin for formatting code.
call dein#add('sbdchd/neoformat')

call dein#add('elzr/vim-json', {'on_ft': 'json'})
call dein#add('othree/jsdoc-syntax.vim')
call dein#add('heavenshell/vim-jsdoc')
call dein#add('hail2u/vim-css3-syntax', {'on_ft':['css','scss']})
call dein#add('ap/vim-css-color')

" quoting/parenthesizing made simple
call dein#add('tpope/vim-surround')

" Vim plugin for auto closing brackets
call dein#add('itmammoth/doorboy.vim') 

" A Vim plugin that always highlights the enclosing html/xml tags
call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'})

call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})

" A tree explorer plugin for vim.
call dein#add('scrooloose/nerdtree')

" A plugin of NERDTree showing git status flags
call dein#add('Xuyuanp/nerdtree-git-plugin')
"
" Extra syntax and highlight for nerdtree files
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')

" Adds file type glyphs/icons to many popular Vim plugins
call dein#add('ryanoasis/vim-devicons')

call dein#add('vim-airline/vim-airline')
call dein#add('mattn/emmet-vim', {'on_ft': 'html'})

call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/deol.nvim')
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/context_filetype.vim')

call dein#add('Shougo/context_filetype.vim')
call dein#add('carlitux/deoplete-ternjs', {'on_ft': 'javascript'})
call dein#add('zchee/deoplete-jedi', {'on_ft': 'python'})

call dein#add('zchee/deoplete-zsh')
call dein#add('Valodim/vim-zsh-completion')

" A Vim alignment plugin
call dein#add('junegunn/vim-easy-align')

" A vim plugin to display the indention levels with thin vertical lines
call dein#add('Yggdroot/indentLine')

call dein#add('mhartington/oceanic-next')

if dein#check_install()
  call dein#install()
endif
call dein#end()

filetype plugin indent on
" End setup dein ----------------------------------------------------

" Deoplete >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
let g:deoplete#enable_at_startup = 1
let g:echodoc_enable_at_startup=1
"
" End Deoplete <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" Airline >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Let airline tell me my status
set noshowmode
set noswapfile
let g:airline_powerline_fonts = 1
filetype on
set relativenumber number
set tabstop=2 shiftwidth=2 expandtab
set conceallevel=0
"
" End Airline <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"
" IndentLine >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
let g:indentLine_char = '¦'
" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
"
" End IndentLine <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" NERDTree >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
augroup ntinit
  autocmd FileType nerdtree call s:nerdtreeinit()
augroup END
function! s:nerdtreeinit()
  nunmap <buffer> K
  nunmap <buffer> J
endf

map <silent> - :NERDTreeToggle<CR>
nmap <C-i> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeHijackNetrw=0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1
let g:WebDevIconsOS = 'Darwin'
let NERDTreeIgnore = ['\.pyc$', '\.retry$']
let NERDTreeMinimalUI=1
let NERDTreeCascadeSingleChildDir=0
"
" End NERDTreeToggle <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Themes and colors >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
syntax enable
syntax on
"
" End Themes and colors <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"
" Code formating >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
",f to format code, requires formatters: read the docs
noremap <leader>f :Neoformat<CR>
"
" End code formation <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"
" Emmet >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
function! s:expand_html_tab()
  " try to determine if we're within quotes or tags.
  " if so, assume we're in an emmet fill area.
  let line = getline('.')
  if col('.') < len(line)
    let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
    if len(line) >= 2
      return "\<C-n>"
    endif
  endif
  " expand anything emmet thinks is expandable.
  if emmet#isExpandable()
    return emmet#expandAbbrIntelligent("\<tab>")
    " return "\<C-y>,"
  endif
  " return a regular tab character
  return "\<tab>"
endfunction
" let g:user_emmet_expandabbr_key='<Tab>'
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

autocmd FileType html,css,scss imap <silent><buffer><expr><tab> <sid>expand_html_tab()
let g:user_emmet_mode='a'
let g:user_emmet_complete_tag = 0
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall
"
" End emmet <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"
" CtrlP >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"
" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"
" End CtrlP <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
let mapleader = "\<Space>"
