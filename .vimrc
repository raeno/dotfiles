
set nocompatible              " be iMproved, required
filetype off                  " required

set clipboard+=unnamedplus

call plug#begin()

" " The following are examples of different formats supported.
" " Keep bundle commands between here and filetype plugin indent on.
" " scripts on GitHub repos
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Lokaltog/vim-easymotion'

Plug 'rizzatti/dash.vim'
Plug 'vimwiki/vimwiki'
" Plug 'tbabej/taskwiki'

Plug 'Raimondi/delimitMate'
Plug 'kchmck/vim-coffee-script'
Plug 'gaogao1030/vim-slimbars'
Plug 'neomake/neomake'
Plug 'scrooloose/syntastic'

Plug 'tpope/vim-surround'

Plug 'rizzatti/dash.vim'
Plug 'Yggdroot/indentLine'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'

" ruby stuff
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'mustache/vim-mustache-handlebars'
Plug 'jgdavey/vim-blockle'
Plug 'ngmy/vim-rubocop'

Plug 'bling/vim-airline'

Plug 'scrooloose/nerdtree'
Plug 'slim-template/vim-slim'
Plug 'kien/ctrlp.vim'

" color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'blueshirts/darcula'
Plug 'vim-scripts/mayansmoke'

Plug 'scrooloose/nerdcommenter'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-rvm'

" pythong & machine learning
Plug 'tmhedberg/SimpylFold'

Plug 'Valloric/YouCompleteMe'
" Plug 'nvie/vim-flake8'

" scheme & clojure
Plug 'kien/rainbow_parentheses.vim'

" clojure stuff
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-fireplace'

" elixir stuff
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" tmux
Plug 'benmills/vimux'

Plug 'vim-scripts/summerfruit256.vim'

call plug#end()            " required
filetype plugin indent on

syntax enable
set background=dark

set number
set t_Co=256
colorscheme darcula

filetype plugin indent on 

set expandtab
set tabstop=2
set copyindent
set preserveindent
set softtabstop=2
set shiftwidth=2
set splitbelow
set splitright
set backspace=indent,eol,start

set scrolloff=3

let mapleader=","
let maplocalleader="\\"

nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase

set gdefault

set incsearch
set showmatch
set hlsearch
set autoread
set wildmenu

" no backups
set nobackup
set nowritebackup

" clear selection
nnoremap <leader><space> :noh<cr>

nnoremap <leader><w> <C-W>

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap jk <ESC>

nnoremap <leader><leader> <c-^>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

map <c-c> <esc>

" F1 is like escape for us
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" map ESC as exit to normal mode in terminal
tnoremap <Esc> <C-\><C-n>

" local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

map <leader>it :r! date "+\%A, \%Y \%B \%d \%H:\%M:\%S"<C-R>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap <expr> %% expand('%:h').'/'
map <leader>e :edit %%
map <leader>v :view %%"

let g:auto_save=1
set noswapfile
set tags+=gems.tags

set pastetoggle=<F2>

" support russian in normal mode
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

let g:indentLine_color_term = 238

" SICP racket helper
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

" open quickwindow after any grep
autocmd QuickFixCmdPost *grep* cwindow

so ~/.vim/settings.vim
