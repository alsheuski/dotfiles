" Setup dein --------------------------------------------------------
if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
  call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
  call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif


" Required:
set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
set rtp+=/usr/local/opt/fzf

call dein#begin(expand('~/.config/nvim'))
let pluginsExist = 0

call dein#add('Shougo/dein.vim')
call dein#add('haya14busa/dein-command.vim')

call dein#add('othree/html5.vim')

" Fuzzy file, buffer, mru, tag, etc finder.
call dein#add('ctrlpvim/ctrlp.vim')
" call dein#add('wincent/command-t')

" A (Neo)vim plugin for formatting code.
call dein#add('sbdchd/neoformat')

" Fzf search for vim
call dein#add('junegunn/fzf.vim', { 'do': './install --all' })

call dein#add('othree/yajs.vim', {'on_ft': 'javascript'})
call dein#add('othree/es.next.syntax.vim', {'on_ft': 'javascript'})

" Syntax for JavaScript libraries
call dein#add('othree/javascript-libraries-syntax.vim')

" Vastly improved Javascript indentation and syntax support in Vim.
call dein#add('pangloss/vim-javascript')

" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
call dein#add('Raimondi/delimitMate', {'on_ft': ['javascript', 'typescript', 'css', 'scss']})
call dein#add('elzr/vim-json', {'on_ft': 'json'})
call dein#add('othree/jsdoc-syntax.vim')
call dein#add('heavenshell/vim-jsdoc')
call dein#add('hail2u/vim-css3-syntax', {'on_ft':['css','scss']})
call dein#add('ap/vim-css-color')

" The most advanced TypeScript Syntax Highlighting
call dein#add('HerringtonDarkholme/yats.vim')

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
