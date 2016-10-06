" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-vinegar'
Plugin 'SirVer/ultisnips'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mxw/vim-jsx'
Plugin 'mileszs/ack.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'scrooloose/syntastic'
Plugin 'trevordmiller/nova-vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'vim-airline/vim-airline'

call vundle#end()

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
" Revert with ":filetype off".
filetype plugin indent on


" Configuration

syntax on
set background=dark
colorscheme nova 
set number


set clipboard=unnamed
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set smarttab
set laststatus=2
set cursorline
set showcmd " display incomplete commands
set autoindent
set foldmethod=manual
set showmatch
" In many terminal emulators the mouse works just fine.  By enabling it you
" can position the cursor, Visually select and scroll with the mouse.
set mouse=a
set ruler " show the cursor position all the time
set wildmenu " display completion matches in a status line
set incsearch " Do incremental searching 
set autoread
set undofile
set termguicolors
set display=truncate " show @@@ in the last line if it is truncated

set history=200 " keep 200 lines of command line history

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts = 1
let NERDTreeMinimalUI=1

let g:UltiSnipsExpandTrigger='<TAB>'
let g:UltiSnipsEditSplit='vertical'

let g:jsx_ext_required = 0
let g:ctrlp_working_path_mode = 'a'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:UltiSnipsExpandTrigger='<c-j>'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set shiftround
set wildignore+=node_modules,compiled

" Maps
let mapleader=' '
map <leader><leader> :w<CR>
map <leader>w <c-w>
map <leader>t :tabnew<CR>
map <leader>d :NERDTreeFind<CR>
map <F2> :UltiSnipsEdit<CR>
map Q gq

