set nocompatible
nnoremap <silent><leader>z :set hls \| :let @/=strpart(getline("."), col(".")-1)<CR>
" Handle quit related typos
silent! cnoreabbrev Q q
silent! cnoreabbrev QA qa
silent! cnoreabbrev Qa qa
silent! cnoreabbrev W w
silent! cnoreabbrev WQ wq
silent! cnoreabbrev Wq wq
silent! cnoreabbrev WA wa
silent! cnoreabbrev Wa wa
silent! cnoreabbrev WQA wqa
silent! cnoreabbrev WQa wqa
silent! cnoreabbrev Wqa wqa
syntax on
highlight clear SpellBad
highlight SpellBad term=standout ctermbg=6 ctermfg=88
highlight ExtraWhitespace ctermbg=green guibg=darkgreen
match ExtraWhitespace /\s\+$/
set hidden
set wildmenu
set wildmode=longest:full
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
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
hi StatusLine ctermbg=16 ctermfg=3 cterm=none
set laststatus=2
set statusline=\>%F
set statusline+=%r
set statusline+=%m
set statusline+=%=
set statusline+=%c,\ 
set statusline+=%l\ \ \ \ -/-\ \ \ \ \ [T:%L]
