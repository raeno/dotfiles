
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
Plug 'tpope/vim-rhubarb'

Plug 'rizzatti/dash.vim'
Plug 'mtth/scratch.vim'

Plug 'Raimondi/delimitMate'
Plug 'gaogao1030/vim-slimbars'

Plug 'neomake/neomake'
Plug 'scrooloose/syntastic'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-surround'

Plug 'rizzatti/dash.vim'

Plug 'janko-m/vim-test'

" JS stuff
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'

" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }

" ReasonML
Plug 'reasonml-editor/vim-reason-plus'

" ruby stuff
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'mustache/vim-mustache-handlebars'
Plug 'jgdavey/vim-blockle'
Plug 'slim-template/vim-slim'

" SML
Plug 'jez/vim-better-sml'

Plug 'bling/vim-airline'

if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'blueshirts/darcula'
Plug 'vim-scripts/mayansmoke'

Plug 'preservim/nerdcommenter'

" pythong & machine learning
Plug 'tmhedberg/SimpylFold'

" scheme & clojure
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-classpath'

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

set updatetime=300

" clear selection
nnoremap <leader><space> :noh<cr>

nnoremap <leader><w> <C-W>

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

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

set pastetoggle=<F2>
set termguicolors

" support russian in normal mode
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

let g:indentLine_color_term = 238

" SICP racket helper
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

" open quickwindow after any grep
autocmd QuickFixCmdPost *grep* cwindow

packadd! matchit
so ~/settings.vim
