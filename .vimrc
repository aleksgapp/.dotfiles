" Basic settings

set exrc
set secure
set nocompatible                " Eliminate backward-compatibility
filetype off
syntax on                       " Syntax highlighting
filetype plugin indent on


" UI Config
set cursorline                  " Highlight line with the cursor
set number                      " Enable line numbers
set ruler                       " Turn on the ruler
set laststatus=2                " Enables airline all the time
set showcmd                     " show command in bottom bar
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when needed to
set showmatch                   " highlight matching [{()}]
set visualbell                  " Use visual bell instead of beeping
set mouse=a                     " Enable use of mouse for all modes
set background=dark
set list                        " Display unprintable characters f12 - switches
set listchars=tab:\ \ ,eol:¬,trail:•,extends:>,precedes:<
" set colorcolumn=110
" Searching


set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches

let mapleader=","               " leader is a comma

" jk is escape
inoremap jk <esc>
inoremap kj <esc>
inoremap <C-h> <left>
inoremap <C-l> <right>


" Leader shortcuts

" turn off search highlight
noremap <leader><space> :nohlsearch<CR>

" save session
nnoremap <leader>s :mksession<CR>


" Tabbing
set expandtab                   " tabs are spaces
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in TAB when editing
set autoindent
set shiftwidth=4

" Bindings

" move to beginig/eng of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted line
nnoremap gV `[v`]

set backspace=indent,eol,start  " Make backspace work like most other apps

execute pathogen#infect()

colorscheme solarized

let g:airline_powerline_fonts=1
let g:airline_there='solarized'
let g:airline#extensions#tabline#enabled=1

let g:neocomplcache_enable_at_startup=1

" Unite bindings and configuration settings
nnoremap <C-p> :Unite file_rec/async<CR>

let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
nnoremap <Space>/ :Unite grep:.<CR>

nnoremap <space>s :Unite -quick-match buffer<cr>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"">"">")>>>"

map <C-n> :NERDTreeToggle<CR>

augroup project
    autocmd!
    autocmd BufRead, BufNewFile *.h, *.c set filetype=c.doxygen
augroup END

let &path.="/src/include,/usr/include/AL,"
