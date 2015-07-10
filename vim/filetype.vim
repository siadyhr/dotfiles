if exists("did_load_filetypes")
  finish
  endif
  augroup filetypedetect
  au BufRead,BufNewFile *.nxc set filetype=nxc
augroup END

