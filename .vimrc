" Install Pathogen
" execute pathogen#infect()
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

" Enable syntax highlighting
syntax on
syntax enable
set background=dark
"set background=Darjlight
"colorscheme solarized
"colorscheme xoria256
"colorscheme solarized
colorscheme jellybeans

"Plugin 'speshak/vim-cfn'

" Set the Window Title
set title

" Disable vi compatibility
set nocompatible

" Work out filetype
filetype on
"filetype plugin on
filetype plugin indent on

" Turn backup off...
set nobackup
set nowb
"set noswapfile

" Use spaces instead of tabs
set expandtab

" Tab Spacing :: 1 tab = 2 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Be smart when using tabs
" set smarttab

" :set backspace=indent,eol,start
set backspace=2

"ignore case and smart case search
set smartcase
set ignorecase

" highlight search results
set hlsearch

" incremental search on
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
" set mat=2

" No annoying sound on errors
"set noerrorbells
"set novisualbell
"set t_vb=
"set tm=500

" always show the status line
set laststatus=2

"set nofoldenable

"press F8 to toggle pasting
set pastetoggle=<F8>

" Show ruler
set ruler

" Show Editor Mode
set showmode

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=5

set wildmode=longest,list
set wrapscan

nmap ;tr :%s/\s\+$//
vmap ;tr  :s/\s\+$//
"map q :q<CR>
"map h :Ex<CR>

noremap <silent> <C-l> :nohl<CR<C-l>

function StripTrailingWhitespace()
   normal mz
   normal Hmy
   exec '%s/\s*$//g'
   normal 'yz<cr>
   normal `z
endfunction

" autocmd BufWritePre * call StripTrailingWhitespace()

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

:nmap <C-N><C-N> :set invnumber<CR>

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

