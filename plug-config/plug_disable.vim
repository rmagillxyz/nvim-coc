

" could not get this to work, but I like the idea
" function! plug_disable#commit()
"   for name in g:plugs_disabled
"     if has_key(g:plugs, name)
"       call remove(g:plugs, name)
"     endif

"     let idx = index(g:plugs_order, name)
"     if idx > -1
"       call remove(g:plugs_order, idx)
"     endif
"   endfor
" endfunction

" let g:plugs_disabled = ['gruvbox']

  " call plug_disable#commit()
