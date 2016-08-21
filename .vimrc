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
set ttyfast
set lazyredraw                  " redraw only when needed to
set showmatch                   " highlight matching [{()}]
set visualbell                  " Use visual bell instead of beeping
set mouse=a                     " Enable use of mouse for all modes
set background=dark
set list                        " Display unprintable characters f12 - switches
set listchars=tab:\ \ ,eol:¬,trail:•,extends:>,precedes:<
set colorcolumn=80
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


" Buffer setup

" This allows buffers to be hidden if you're modified a buffer.
set hidden

" To open a new empty buffer
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bn<cr>

" Move to the previous buffer
nmap <leader>h :bp<cr>


" Quickfix list

nmap q[ :cprev<cr>
nmap q] :cnext<cr>
nmap qo :copen<cr>


execute pathogen#infect()

colorscheme solarized

let g:airline_powerline_fonts=1
let g:airline_there='base16'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled=1

" Show just a filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:ycm_always_populate_location_list = 1

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_javascript_checkers = ['eslint']

" Unite bindings and configuration settings
nnoremap <C-p> :Unite file_rec/async<CR>

let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
nnoremap <Space>/ :Unite grep:.<CR>
nnoremap <space>s :Unite -quick-match buffer<cr>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"">"">")>>>"

map <C-n> :NERDTreeToggle<CR>

" Proper Ctags locations
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
" Default is 40, seems too wide
let g:tagbar_width=40
" Display panel with y (or ,y)
noremap <silent> <Leader>y :TagbarToggle<cr>

augroup project
    autocmd!
    autocmd BufRead, BufNewFile *.h, *.c set filetype=c.doxygen
augroup END

let &path.="/src/include,/usr/include/AL,"

