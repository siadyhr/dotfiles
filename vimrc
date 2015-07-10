syntax on
""set spell
autocmd FileType plaintext setlocal spell spelllang=da,en
set number
""set mouse=a
""set whichwrap=b,s,<,>,[,],h,l,w,e
set autoindent
""set cindent
filetype plugin indent on
map Æ :

""latex:
 filetype plugin indent on
 set grepprg=grep\ -nH\ $*
 let g:tex_flavor = "latex"

"" imap <C-i> <Plug>Tex_InsertItemOnThisLine

"" colorscheme solarized
"" set background=dark

