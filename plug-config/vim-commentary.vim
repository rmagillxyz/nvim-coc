
function! Comment()
  if (mode() == "n" )
    execute "Commentary"
  else    
    execute "'<,'>Commentary"
  endif
 endfunction
" vnoremap <silent> <space>/ :call Comment()
" noremap <silent> <C-/> :call Comment()
" noremap +~ :call Comment()<CR>

