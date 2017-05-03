
if (!isdirectory(expand("/usr/local/lib/node_modules/csscomb")))
  echo('Installing csscomb...')
  call system("npm install -g csscomb")
endif

if (!isdirectory(expand("/usr/local/lib/node_modules/js-beautify")))
  echo('Installing js-beautify')
  call system("npm install -g js-beautify")
endif

" Code formating >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
noremap <Leader>f :Neoformat<CR>
