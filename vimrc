" .vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set pathogen autoload
execute pathogen#infect() 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" "Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" "Plugin 'L9'
" Git plugin not hosted on GitHub
" "Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" "Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" "Plugin 'ascenator/L9', {'name': 'newL9'}
" Ack plugin for search
Plugin 'mileszs/ack.vim'
" Ag plugin for search 
"Plugin 'rking/ag.vim'
" Sneak plugin
Plugin 'justinmk/vim-sneak'
" dispatch.vim
Plugin 'tpope/vim-dispatch'
" fugitive.vim - Uber GIT wrapper
Plugin 'tpope/vim-fugitive'
" make JS / JSON pretty vim-jsbeautify
Plugin 'maksimr/vim-jsbeautify'
" bufexplorer
Plugin 'jlanzarotta/bufexplorer'
" quick-scope
Plugin 'unblevable/quick-scope'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
syntax enable
set background=dark
colorscheme solarized
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']                      " quick-scope
" Put your non-Plugin stuff after this line

" +clipboard stuff
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
" Indenting 
set tabstop=8            " tabs at proper spots
set expandtab            " dont use actual tab character
set shiftwidth=4         " indenting is 4 spaces
set autoindent           " turn on 
set smartindent          " does the right thing (mostly)
set cindent              " more strict rules for C programming
" Line Numbers
set number               " turn on linenumbers
set numberwidth=3
" Syntax (yes)
syntax on                " use syntax highlighting
" Ruler
set ruler                " use ruler at bottom right
