" setting up plugin
set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-endwise'
Plugin 'tomtom/tcomment_vim'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'fatih/vim-go'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'

call vundle#end()
filetype plugin indent on


" custom configuration
if has('nvim-0.1.5') && $COLORTERM == 'truecolor'
  set termguicolors
end

" vim settings
syntax enable
set background=dark
colorscheme neodark

let mapleader=','
let g:neodark#solid_vertsplit=1

set number
set linespace=15
set backspace=indent,eol,start

set nohlsearch
set incsearch
set showcmd
set showmode
set smarttab
set mouse=a
set visualbell
set noerrorbells
set smartcase
set ignorecase
set autoindent
set copyindent

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set tags=./tags,tags;
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//

set list
set listchars=tab:▸\ ,trail:.

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" keys bindings
imap jj <esc>
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>l :set list!<cr>
nmap <leader>h :set hlsearch!<cr>

noremap j gj
noremap k gk
nnoremap K :grep! "\b<C-R><C-W>\b"<cr>:cw<cr>

nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

nmap vs :vsplit<cr>
nmap sp :split<cr>
nmap :sp :rightbelow sp<cr>
nmap :bp :BufSurBack<cr>
nmap :bn :BufSurfForward<cr>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" vim-go
let g:go_fmt_command = "goimports"

