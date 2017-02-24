set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Bundle 'vim-ruby/vim-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
Plugin 'scrooloose/syntastic'
Bundle 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/vimfiles'
Plugin 'bling/vim-airline'
Bundle 'Lokaltog/vim-powerline'
Plugin 'OrangeT/vim-csharp'
Bundle 'tmhedberg/matchit'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Lokaltog/powerline'
Bundle 'thoughtbot/vim-rspec'
Plugin 'kien/ctrlp.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Bundle 'quanganhdo/grb256'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'jgdavey/tslime.vim'
Bundle 'ervandew/supertab'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/closetag.vim'
Bundle 'craigemery/vim-autotag'
Bundle 'jplaut/vim-arduino-ino'
Bundle 'digitaltoad/vim-jade'
Bundle 'mattn/emmet-vim'
Bundle 'fsharp/fsharpbinding'
Bundle 'OmniSharp/omnisharp-vim'
"Plugin 'Valloric/YouCompleteMe'requires vim compiled with python...

call vundle#end()            " required

set backspace=indent,eol,start

"Remove the blasted beeping!!!
set noeb vb t_vb=

syntax on

let g:nerdtree_tabs_open_on_console_startup = 1
let g:Powerline_symbols = 'fancy'

let g:rspec_command = 'call SendToTmux(" rspec {spec}\n")'

set t_Co=256
colorscheme grb256

autocmd VimEnter * NERDTree

let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

filetype plugin indent on
let g:rubycomplete_load_gemfile = 1
let g:ctrlp_working_path_mode = 'r'
let g:tmux_navigator_save_on_switch = 1

" (Hopefully) removes the delay when hitting esc in insert mode
 set noesckeys
 set ttimeout
 set ttimeoutlen=1
 set timeoutlen=1000 ttimeoutlen=0


"line highlighting
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=233

set noswapfile
set ignorecase smartcase
set mouse=a
set nowrap

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab


let mapleader=","
" select the current method in ruby (or it block in rspec)
map <leader>sm /end<CR>?\<def\>\\|\<it\><CR>:noh<CR>V%
map <leader>s :CtrlP spec/<CR>
nnoremap <silent> <leader>T :ClearCtrlPCache<cr>\|:CtrlP<cr>

map <leader>irb !irb<CR>

map <leader>vpi :PluginInstall<CR>
map <leader>rf :!ruby %<CR>

map <leader>vs :source ~/.vimrc<CR>
map <leader>vi :tabe ~/.vimrc<CR>

map <leader>n :NERDTreeTabsToggle<CR>
map <leader>ff :NERDTreeFind<CR>

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>/not staged<CR>/modified<CR>

map <Leader>ira :!ira<CR>
map <Leader>srb !scratchrb<CR>

map <Leader>tnw :!tmux next-window<CR>
map <Leader>tpw :!tmux previous-window<CR>

"
"set spell spelllang=en_gb
set number
set relativenumber"
