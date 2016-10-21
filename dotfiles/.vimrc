" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'tpope/vim-vinegar'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mxw/vim-jsx'
Plug 'mileszs/ack.vim'
Plug 'wakatime/vim-wakatime'
Plug 'scrooloose/syntastic'
Plug 'trevordmiller/nova-vim'
Plug 'ElmCast/elm-vim'
Plug 'digitaltoad/vim-pug'
Plug 'vim-airline/vim-airline'
call plug#end()



" Configuration
set background=dark
colorscheme nova 
set number


set nobackup
set noswapfile
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
let g:UltiSnipsExpandTrigger='<c-j>'

let NERDTreeShowHidden=1

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2

autocmd Filetype elm setlocal ts=4 sw=4 expandtab

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

"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

let g:elm_syntastic_show_warnings = 1

" Elm
let g:elm_format_fail_silently = 1
let g:elm_format_autosave = 1
let g:elm_detailed_complete = 1
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}
