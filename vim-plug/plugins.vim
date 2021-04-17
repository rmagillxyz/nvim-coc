
let g:coc_data_home= '/usr/local/share/coc'

" auto-install vim-plug
if empty(glob('$HOME/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/autoload/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'jiangmiao/auto-pairs'
Plug 'schickling/vim-bufonly'
Plug 'wesQ3/vim-windowswap'
Plug 'lambdalisue/suda.vim'
Plug 'mhinz/vim-signify'
Plug 'adelarsq/vim-matchit'
Plug 'vimwiki/vimwiki'
Plug 'yegappan/mru'
Plug 'voldikss/vim-floaterm'
Plug 'machakann/vim-highlightedyank'
Plug 'ptzz/lf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/goyo.vim'
" Plug 'mhinz/vim-startify'
Plug 'honza/vim-snippets'

" " Themes
" Plug 'sickill/vim-monokai'
" Plug 'arcticicestudio/nord-vim'
" Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
" Plug 'srcery-colors/srcery-vim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'drewtempelmeyer/palenight.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

" Plug 'kyazdani42/nvim-tree.lua'
" Plug 'kyazdani42/nvim-web-devicons'
"Plug 'branwright1/salvation-vim'
"Plug 'crusoexia/vim-monokai'
"Plug 'kovetskiy/sxhkd-vim'
"Plug 'tmsvg/pear-tree'
"Plug 'junegunn/gv.vim'
"Plug 'scrooloose/NERDTree'
"Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
"Plug 'scrooloose/nerdcommenter'
"Plug 'Yggdroot/indentLine'
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'ap/vim-css-color'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'tpope/vim-rhubarb'
"Plug 'mhinz/vim-grepper'
"Plug 'brooth/far.vim'
call plug#end()



" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
