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


