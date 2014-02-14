set nocp
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'AutoClose'
Bundle 'Gundo'
Bundle 'Tagbar'
Bundle 'buftabs'
Bundle 'gnupg.vim'
Bundle 'grep.vim'
Bundle 'gtk-vim-syntax'
Bundle 'rainbow_parentheses.vim'
Bundle 'rename.vim'
Bundle 'scratch.vim'
"Bundle 'ManPageView'

set autochdir
set background=light
set backspace=2
set cmdheight=2
set colorcolumn=+1
set completeopt=menuone,preview
set foldenable
set hlsearch
set ignorecase
set incsearch
set laststatus=2
"set list
set listchars=tab:▷⋅,trail:· ",eol:$
set mouse=a
set noerrorbells
set nohidden
set ruler
set scrolloff=5
set showcmd
set smartcase
set t_Co=256
set t_vb=
set textwidth=72
set wildmenu
set wildmode=list:longest,full

filetype plugin indent on
syntax on

hi ColorColumn ctermbg=232

nnoremap <silent> <Esc> :noh<Return><Esc>

let g:buftabs_in_statusline=1

if !exists("autocommands_loaded")
	au BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
		\ endif
endif

let $VIMRC_LOCAL = expand('<sfile>:p') . '.local'
if filereadable($VIMRC_LOCAL)
	so $VIMRC_LOCAL
endif
