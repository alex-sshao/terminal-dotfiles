call plug#begin()

Plug 'tpope/vim-surround'


Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'

Plug 'powerline/powerline-fonts'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'airblade/vim-gitgutter'


Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" search
set hlsearch
set ignorecase
set smartcase

" code completion
set completeopt=menuone,noinsert,noselect
set omnifunc=ale#completion#OmniFunc

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" ale config (Syntax checking)
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 100
let g:ale_completion_autoimport = 1

let g:ale_linters = {
\ 'c': ['clangd'],
\ 'c++': ['clangd'],
\ }

let g:ale_c_clang_options = '-std=c11 -Wall -Wextra -Wpedantic -O0 -g'
let g:ale_cpp_cc_options = '-std=c++0x -Wall -Wextra -Weffc++ -Wsign-conversion'

nmap <silent> [e <Plug>(ale_previous_wrap)
nmap <silent> ]e <Plug>(ale_next_wrap)

set statusline+=%#warningmsg#
set statusline+=%*


" fzf
nnoremap <C-n> :Files<CR>
nnoremap <C-f> :Rg<CR>

" window management
nnoremap <C-w>v :vsplit<CR>
nnoremap <C-w>t :vert term<CR>
nnoremap <C-w><C-t> :vert term<CR>
nnoremap <C-w>T :term<CR>
nnoremap <C-w>s :split<CR>
nnoremap <C-w>c :close<CR>
nnoremap <C-w>x :x<CR>
nnoremap <C-w><C-w> :w<CR>
nnoremap <C-w>q :q!<CR>
nnoremap <C-w><C-q> :q!<CR>

tnoremap <C-w>q <C-w>N:q!<CR>
tnoremap <C-w><C-q> <C-w>N:q!<CR>
tnoremap <C-w><C-n> <C-w>N<CR>
tnoremap <C-w><C-N> <C-w>N<CR>

nnoremap <C-a>h :tabprevious<CR>
nnoremap <C-a>l :tabnext<CR>
nnoremap <C-a>n :tabnew<CR>
nnoremap <C-a>x :x<CR>

" sigstp block
nnoremap <c-z> <nop>
vnoremap <c-z> <nop>
inoremap <c-z> <nop>

" Anti-Find perma highlight
nnoremap <CR> :noh<CR><CR>

" Visuals
let g:gitgutter_set_sign_backgrounds = 0
set background=dark
syntax on
set termguicolors
colorscheme CP
let g:airline#extensions#tabline#enabled = 1

" if powerline doesn't work
" let g:airline_powerline_fonts = 1

scriptencoding utf-8
set encoding=utf-8
setglobal fileencoding=utf-8

set fillchars=vert:\┃

" General
set nobackup
set noswapfile
set relativenumber
set autoindent
set smartindent
set shell=/bin/zsh

set updatetime=100
set tabstop=2

set shiftwidth=2
set breakindent
set formatoptions=l
set lbr

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"set cursorline
set cursorlineopt=number
set nu

cabbrev e Explore
cabbrev E Explore
cabbrev term vert term

