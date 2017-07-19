set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'javascript'] }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'scrooloose/nerdcommenter'
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'mhartington/oceanic-next'
call plug#end()


" Configuration

if (has("termguicolors"))
set termguicolors
endif

colorscheme OceanicNext

set number
set guifont=Fira\ Code:h14
set guioptions-=r
set guioptions-=L
set completeopt-=preview

set undofile
set clipboard=unnamed
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//


set smarttab
set laststatus=2
set showcmd " display incomplete commands
set autoindent
set foldmethod=manual
set showmatch
set hlsearch
set mouse=a

set ruler " show the cursor position all the time
set wildmenu " display completion matches in a status line
set incsearch " Do incremental searching 
set autoread
set termguicolors
set display=truncate " show @@@ in the last line if it is truncated

set history=200 " keep 200 lines of command line history

let g:airline_theme='oceanicnext'
let g:airline_extensions = ['tabline']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1

let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger='<c-j>'

let g:jsx_ext_required = 0

let NERDTreeShowHidden=1
let NERDTreeRespectWildIgnore=1
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start
set shiftround

let g:javascript_plugin_flow = 1

" Ignore
set wildignore+=*DS_Store*

" Maps
let mapleader=' '
map <C-p> :FZF<CR>
map <leader><leader> :w<CR>
map <leader>w <c-w>
map <leader>t :tabnew<CR>
map <F2> :UltiSnipsEdit<CR>
map <leader>d :NERDTreeFind<CR>

" Lint
let g:ale_linters = {
\  'javascript': ['eslint'],
\}

let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1

nmap <leader>= <Plug>(ale_fix)

if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
