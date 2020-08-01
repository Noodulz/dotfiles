set number
let mapleader = ","
packloadall
silent! helptags ALL
set clipboard=unnamedplus
set tabstop=3
set autoindent

" Plugins Section 
call plug#begin('~/.local/share/nvim/site/pack/git-plugins/start')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ayu-theme/ayu-vim'

Plug 'exitface/synthwave.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/seoul256.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'hardcoreplayers/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'gilgigilgil/anderson.vim'
call plug#end()
" Config Section
set background=dark
color synthwave

if has('termguicolors')
  set termguicolors " 24-bit terminal
else
  let g:synthwave_termcolors=256 " 256 color mode
endif
let g:airline_theme='synthwave'

" File Explorer NERDTree
let g:NERDTreeShowHidden = 1
let g:NerdTreeMinimaUI = 1
let g:NERDTreeIgnore = []
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Fuzzy Finder File Searching
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Terminal 
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l 

" Dashboard
let g:dashboard_default_executive='fzf.vim'
let g:dashboard_default_header='commicgirl13'
