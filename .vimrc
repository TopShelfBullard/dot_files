set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmark/vundle.vim'
Plugin 'tpope/vim-rvm'
Plugin 'godlygeek/csapprox'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-ragtag'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/nerdcommenter' 
Plugin 'tpope/vim-cucumber'
Plugin 'rizzatti/dash.vim'
Plugin 'fatih/vim-go'
Plugin 'elixir-lang/vim-elixir'
call vundle#end()

filetype plugin indent on
set hidden
syntax on

set showcmd
set showmode
set showmatch
set cmdheight=2
set number

set foldenable
set virtualedit=all

set incsearch
set hlsearch
set ignorecase
set smartcase

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

set cindent
set autoindent
set copyindent

set nowrap
set backspace=indent,eol,start
set noerrorbells
set number
set cmdheight=2


"Mappings:
  let mapleader = ","

  "Use 'ag' for silver searcher
    let g:ackprg = 'ag --nogroup --nocolor --column'
  
  "Completion
    inoremap {{      {}<Left>
    inoremap ""      ""<Left>
    inoremap ((      ()<Left>
    inoremap ''      ''<Left>
    inoremap [[      []<Left>
    inoremap </      </><Left>

  "Open NERDTree with [,d] 
    map <Leader>d :NERDTreeToggle<CR> :set number<CR> 0<CR>

  "Edit $MYVIMRC with [,m]
    map <leader>m :e $MYVIMRC<CR>

  "Go to previous tab with [<F3>]
    map <F3> :tabp<CR>                       

  "Go to next tab with [<F4>]
    map <F4> :tabn<CR>

  "Go back to last buffer
    nnoremap <leader><leader> <c-^>

  "Go to the current file in nerdtree
    nmap <leader>f :NERDTreeFind<CR>

  "Move cursor between panes
  "Down
    map <C-J> <C-W>j<C-W>_
  "Up
    map <C-K> <C-W>k<C-W>_
  "Left
    nmap <c-h> <c-w>h<c-w><Bar>
  "Right
    nmap <c-l> <c-w>l<c-w><Bar>

"UI
  let g:solarized_termcolors=256
  set background=dark
  colorscheme railscasts
  set cursorline hl
  set cursorcolumn hl
  set colorcolumn=100
  highlight cursorline ctermfg=none ctermbg=240 cterm=none
  highlight cursorcolumn ctermfg=none ctermbg=240
