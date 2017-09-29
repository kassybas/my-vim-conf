set nocompatible
" Handle quit related typos

syntax on
highlight ExtraWhitespace ctermbg=green guibg=darkgreen
match ExtraWhitespace /\s\+$/

" Tab completition
set wildmenu
set wildmode=longest:full

set showcmd

set hlsearch
set ignorecase
set smartcase
set foldopen=search

set backspace=indent,eol,start

set autoindent
set nostartofline
set confirm
set visualbell
set t_vb=
set cmdheight=1
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set tabstop=4
set softtabstop=2
set foldmethod=marker
set expandtab
nnoremap <C-L> :nohl<CR><C-L>
set paste
set ruler
set colorcolumn=+1        " highlight column after 'textwidth'
set colorcolumn=+1,+2,+3  " highlight three columns after 'textwidth'
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
hi User1 ctermfg=3 cterm=none
set rulerformat=%80(%1*%F%r%m\ \|\ %c,%l\ \|\ [%P]%)

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"Set , as a aleader for shortcuts
let mapleader = ","
let g:mapleader = ","
nmap <leader>n :set nonumber<cr>
nmap <leader>N :set number<cr>
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" New tab
map <leader>tn :tabnew<cr>

