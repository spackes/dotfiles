" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
" Syntax
set background=light
syntax on
highlight Statement ctermfg=red guifg=red
 
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
 
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
 
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
 
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
 
" Make visuell mode work in Windows
vnoremap <Left> h
vnoremap <Right> l
vnoremap <Up> k
vnoremap <Down> j
 
" Hide Toolbar and Scrollbar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
 
" Automatische Einrückung (Globale Konfiguration)
set smartindent
set smarttab
 
" UTF-8 als Default-Encoding
set enc=utf-8
 
" Ein Tab entspricht vier Leerzeichen (wie in PEP 8 definiert)
" Dies aber nur für python, damit es nicht mit anderen (ruby, c, Makefiles) kollidiert
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
" Start python on F5
autocmd FileType python map <F5> :w<CR>:!python "%"<CR>

" Set powershell as default
set shell=powershell.exe\ -ExecutionPolicy\ Unrestricted
set shellcmdflag=-Command
set shellpipe=>
set shellredir=>
