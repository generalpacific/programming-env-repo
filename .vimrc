" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

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

execute pathogen#infect()

syntax on
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent
set nu
set tw=80


" c++ syntastic
"
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1

" clang
"map <C-I> :pyf path_to_clang_format/clang-format.py<CR>
"imap <C-I> <ESC>:pyf path_to_clang_format/clang-format.py<CR>i
map <C-I> :pyf /usr/local/bin/clang-format<CR>
imap <C-I> <ESC>:pyf /usr/local/bin/clang-format<CR>i

