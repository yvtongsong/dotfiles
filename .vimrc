syntax on
set t_Co=256
set termguicolors
set background=dark

set autoindent
set tabstop=2
set shiftwidth=2
set showmatch
set autochdir

augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

set hls

filetype plugin indent on

let &t_SI .= "\<Esc>[5 q"
let &t_EI .= "\<Esc>[1 q"

set mouse+=a

set nu
set rnu

nnoremap <C-n> :set rnu!<CR>
vnoremap <C-y> "+y
nnoremap <C-p> "+p

nnoremap <space>d :Ex<CR>
nnoremap <space>f :BufExplorer<CR>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

call plug#begin('~/.vim/plugged')
Plug 'uiiaoo/java-syntax.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-python/python-syntax'
Plug 'morhetz/gruvbox'
Plug 'jlanzarotta/bufexplorer'
Plug 'dense-analysis/ale'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

let g:python_highlight_space_errors = 0
let g:python_highlight_all = 1

let g:ale_linters = {
\   'rust': ['analyzer', 'cargo'],
\}
let g:ale_rust_cargo_use_clippy = 1
