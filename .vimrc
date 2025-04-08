source ~/.vim/coc-example-config.vim

syntax on
set t_Co=256
set termguicolors
set background=dark

set autoindent
set tabstop=2
set shiftwidth=2
set showmatch
set autochdir

set timeoutlen=1000
set ttimeoutlen=1

command! Q q!
command! W w
command! Wq wq
command! WQ wq
command! Qa qa
command! QA qa

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
"Plug 'uiiaoo/java-syntax.vim'
"Plug 'mattn/emmet-vim'
"Plug 'vim-python/python-syntax'
Plug 'morhetz/gruvbox'
Plug 'jlanzarotta/bufexplorer'
"Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'jiangmiao/auto-pairs'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
" Workaround for creating transparent bg
autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
			\ |    highlight LineNr     ctermbg=NONE guibg=NONE
			\ |    highlight SignColumn ctermbg=NONE guibg=NONE

let g:python_highlight_space_errors = 0
let g:python_highlight_all = 1

let g:ale_linters = {
\   'rust': ['analyzer', 'cargo'],
\}
let g:ale_rust_cargo_use_clippy = 1

autocmd FileType * let b:ale_enabled = 0
autocmd FileType rust let b:ale_enabled = 1

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set fileformat=unix
autocmd BufRead,BufNewFile * setlocal fileformat=unix
