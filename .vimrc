filetype plugin indent on 

set ttyfast
set ttimeout
set ttimeoutlen=100

call plug#begin()
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
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
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

Plug 'catppuccin/vim', { 'as': 'catppuccin', 'branch': 'main' }
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


let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0


" fzf
command! -bang -nargs=* PRg
  \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, fzf#vim#with_preview({'dir': system('git rev-parse --show-toplevel 2> /dev/null')[:-2]}), <bang>0)
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

nnoremap <C-w>Q :q!<CR>
nnoremap <C-w>q :q!<CR>

nnoremap <C-w>e :E<CR>
nnoremap <C-w><C-e> :E<CR>

tnoremap <C-w>q <C-w>:q!<CR>
tnoremap <C-w><C-q> <C-w>N:q!<CR>
tnoremap <C-w><C-n> <C-w>N<CR>
tnoremap <C-w><C-N> <C-w>N<CR>

nnoremap <C-a>h :tabprevious<CR>
nnoremap <C-a>l :tabnext<CR>
nnoremap <C-a><C-h> :tabprevious<CR>
nnoremap <C-a><C-l> :tabnext<CR>
nnoremap <C-a>n :tabnew<CR>
nnoremap <C-a>x :x<CR>
nnoremap <a-1> 1gt
nnoremap <a-2> 2gt
nnoremap <a-3> 3gt
nnoremap <a-4> 4gt
nnoremap <a-5> 5gt
nnoremap <a-6> 6gt
nnoremap <a-7> 7gt

nnoremap <C-X> <C-a><C-a>

tnoremap <C-a>h <C-w>:tabprevious<CR>
tnoremap <C-a>l <C-w>:tabnext<CR>
tnoremap <C-a><C-h> <C-w>:tabprevious<CR>
tnoremap <C-a><C-l> <C-w>:tabnext<CR>
tnoremap <C-a>n <C-w>:tabnew<CR>
tnoremap <C-a>x <C-w>:x<CR>
tnoremap <C-a>q <C-w>:q!<CR>

" sigstp block
nnoremap <c-z> <nop>
vnoremap <c-z> <nop>
inoremap <c-z> <nop>

" No search highlight 
" set nohlsearch

" Visuals
let g:gitgutter_set_sign_backgrounds = 0
set background=dark
syntax on
set termguicolors
"colorscheme CP
colorscheme catppuccin_frappe
let g:airline#extensions#tabline#enabled = 1

" if powerline doesn't work
let g:airline_powerline_fonts = 1

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
set scrolloff=3

set updatetime=100
set tabstop=2

set shiftwidth=2
set breakindent
set formatoptions=l
set lbr
set nomodeline

vnoremap < <gv
vnoremap > >gv
nnoremap Q @@

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

command! S execute 'cd ' . resolve('/proc/'.job_info(term_getjob(bufnr('%')))['process'].'/cwd')

"set cursorline
set cursorlineopt=number
set nu

cabbrev e Explore
cabbrev E Explore
cabbrev term vert term

