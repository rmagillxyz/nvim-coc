let g:mapleader = "\<Space>"

nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>bd :bd <CR>
nnoremap <leader>cl :close<CR>
nnoremap <leader>b :buffers<CR>
" vmap <leader>p  <Plug>(coc-format-selected)
" nmap <leader>p  <Plug>(coc-format-selected)

" fugitive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
 
" prevent new line from becoming a comment if it is
nnoremap <leader>o o<Esc>^Da
nnoremap <leader>O O<Esc>^Da
noremap <leader>c <Esc> :CocSearch<Space>
nmap <leader>col <Esc> :color <c-d><Space>
inoremap <leader>123  !important
map <leader>r <Esc>:reg<CR>
map <leader>j <Esc>:jumps<CR>
" nnoremap <leader>sq :%s/pick/squash/gc
nnoremap <leader>sq :2,$s/pick/squash/g
nnoremap <leader>iif i(()=><CR>)()<Esc>O

nnoremap <leader>uf iuseEffect(()=>{},[])<Esc>bf}i<CR>

" nnoremap <leader>usd ^d$oconst [<Esc>pa, set<Esc>pb3lvgU$a] = useState()<Esc>i
nnoremap <leader>usd diwoconst [<Esc>pa, set<Esc>pb3lvgU$a] = useState()<Esc>i


nnoremap <leader>cm bdwi$()<Esc>hp<Esc>

nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>

nmap <leader>' ysiw'
nmap <leader>" ysiw"
nmap <leader>` ysiw`
nmap <leader>{ ysiw{
nmap <leader>[ ysiw[
nmap <leader>( ysiw(
nmap <leader>> ysiw>




nnoremap <leader>js oconsole.log("<C-r>=expand("%:p:h:t")<Esc>/<C-r>=expand('%:t')<Esc>: <C-r>=line('.')<Esc>","")<Esc>F"i
nnoremap <leader>jss oconsole.log("<C-r>=expand("%:p:h:t")<Esc>/<C-r>=expand('%:t')<Esc>: <C-r>=line('.')<Esc>  ",)<Esc>F"lpF"hp<Esc>j
inoremap <leader>jss oconsole.log("<C-r>=expand("%:p:h:t")<Esc>/<C-r>=expand('%:t')<Esc>: <C-r>=line('.')<Esc>  ",)<Esc>F"lpF"hp<Esc>j
nnoremap <leader>jse oconsole.error("<C-r>=expand("%:p:h:t")<Esc>/<C-r>=expand('%:t')<Esc>: <C-r>=line('.')<Esc>  ",)<Esc>F"lpF"hp<Esc>j
nnoremap <leader>jsd diwoconsole.log("<C-r>=expand("%:p:h:t")<Esc>/<C-r>=expand('%:t')<Esc>: <C-r>=line('.')<Esc>  ",)<Esc>F"lpF"hp<Esc>j
nnoremap <leader>j-- oconsole.log("------------------------------------------------")<Esc>



nnoremap <leader>shh oecho "<C-r>=expand("%:p:h:t")<Esc>/<C-r>=expand('%:t')<Esc>: <C-r>=line('.')<Esc> "<Esc>hpbi$<Esc>hpa: <Esc>
nnoremap <leader>shd diwoecho "<C-r>=expand("%:p:h:t")<Esc>/<C-r>=expand('%:t')<Esc>: <C-r>=line('.')<Esc> "<Esc>hpbi$<Esc>hpa: <Esc>


nnoremap <leader>if iif(){<CR>}<Esc>?(<CR>a

" nnoremap <leader>ff i()=>{}<Esc>?}i<CR>
nnoremap <leader>ff i()=>{}<Esc>^f{a<CR><esc>O

nnoremap <leader>md  o[comment]: ()<ESC>F(p
nmap <leader>ic <Esc>:set ignorecase!<CR>

nmap <leader>11 ^
imap <leader>11 <Esc>^i

nnoremap <leader>wl :set wrap!<CR>
nnoremap <leader>qq :q<CR>
nnoremap <leader>c1 :%s/console.log/\/\/console.log/g
nnoremap <leader>c0 :%s/\/\/console.log/console.log/g


 
nnoremap <leader>rcc  ^df*f*D " uncomment react (commentary bug)
nmap <leader>lf :Lf<CR>
nmap <leader>f :FloatermNew<CR>



function ToggleEndChar(CHAR)  
	echo a:CHAR
  execute "normal! mq $"
	let lastChar = matchstr(getline('.'), '\%' . col('.') . 'c.')
	if lastChar == a:CHAR
		execute "normal! x`q"
	else
		let @z = a:CHAR
		execute "normal! \"zp`q"
	endif 
endfun


" dwm maps ctrl+/ to 432
" noremap 432 :Commentary<CR>

" noremap <silent>432, :call ToggleEndChar(',')<CR>
" inoremap <silent>432, <esc>:call ToggleEndChar(',')<CR>
" noremap <silent>432; :call ToggleEndChar(';')<CR>
" inoremap <silent>432; <esc>:call ToggleEndChar(';')<CR>

" this works with alacritty, but could not get it with sxhkd
" noremap 432, :call ToggleEndChar(',')<CR>
" inoremap 432, <esc>:call ToggleEndChar(',')<CR>a
" noremap 432; :call ToggleEndChar(';')<CR>
" inoremap 432; <esc>:call ToggleEndChar(';')<CR>a
" noremap 432: :call ToggleEndChar(':')<CR>
" noremap <silent><leader>: :call ToggleEndChar(':')<CR>
" inoremap <silent><leader>: <esc>:call ToggleEndChar(':')<CR>a

" if you  don't want to mess with the emulator bindings..
noremap <silent><leader>, :call ToggleEndChar(',')<CR>
inoremap <silent><leader>, <esc>:call ToggleEndChar(',')<CR>a
noremap <silent><leader>; :call ToggleEndChar(';')<CR>
inoremap <silent><leader>; <esc>:call ToggleEndChar(';')<CR>a
noremap <leader>: :call ToggleEndChar(':')<CR>
inoremap <silent><leader>: <esc>:call ToggleEndChar(':')<CR>a

" Better window navigation
nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" <TAB>: completion.
" inoremap  <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" move screen horizontally
noremap <C-M-h>  zh
noremap <C-M-l>  zl

" I hate escape more than anything else
inoremap kj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>
inoremap jj <Esc>
" test
inoremap hh <Esc>
inoremap lll <Esc>


" Easy CAPS (case)
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>

noremap <C-f> <Esc> :Rg!<Space>
nnoremap <leader>a :Ag!<Space>
nnoremap <leader>ss :%s/

" mark shortcuts
nnoremap <leader>- "_
nnoremap <leader>h "h
nmap <leader>'' "

" Alternate way to save
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
noremap ~+~+ :wall<CR>
inoremap ~+~+ <Esc>:wall<CR>a

noremap <C-x> :w<CR><C-z>
inoremap <C-x> <Esc>:w<CR><C-z>

nnoremap <C-Q> :q<CR>
nnoremap <C-M-Q> :q!<CR>
nnoremap <M-w> :wq<CR>


" Better tabbing
vnoremap < <gv
vnoremap > >gv

" unhighlight search word 
map <silent> <Esc>  :noh<CR>


"read file if it is modifed externally
" set autoread
"set autowrite

set ignorecase
set smartcase

" func LogIt()
"   let currentWord = expand("<cword>")
"   echom currentWord
"    oconsole.log("LINE: <C-r>=line('.') <Esc>currentWord",currentWord)<Esc>^
" endfunc
" nnoremap gll :call LogIt()
" nnoremap  <leader>iu :exe "grep -R " . shellescape(expand("<cWORD>")) . " ."<cr>
" nnoremap <leader>iu :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>



function ClearRegs() abort
  let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
  for r in regs
    call setreg(r, @_)
  endfor
endfun


fun ToggleLineComments() abort
	execute "%s;.*console.log;\/\/console.log;"
endfun

fun RmLineComments() abort
	execute "%s;.*\/\/.*console.log.*;;"
endfun

fun RmLineCommentsConfirm() abort
	execute "%s;.*\/\/.*console.log.*;;c"
endfun


"close all other buffers:
"noremap <C-k>u    :%bdelete|edit #|normal `"<CR>
"nnoremap <C-k>u :%bdelete|edit #|normal `"
noremap <C-k>u    :BufOnly <CR>
noremap <C-t> :MRU<CR>

" reopen last closed buffer
	" :tabnew#<CR>
	" map <C-z> <Esc> <C-z>




fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("bf","buffers")
" call SetupCommandAlias("cmm","Commentary")



nnoremap <silent> <leader>sw :call WindowSwap#EasyWindowSwap()<CR>
	
"disable default plugin bindings
let g:lf_map_keys = 0 " lf.vim

let g:windowswap_map_keys = 0 



