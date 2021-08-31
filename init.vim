call plug#begin()
"---Directory tree window---
Plug 'preservim/nerdtree'
"---Status line at the bottom---
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
"---Multi-line selection---
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"---Add syntax checker---
Plug 'scrooloose/syntastic'
"---Code autocompletion---
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'valloric/youcompleteme'
"---Python tools---
Plug 'psf/black'
Plug 'vim-scripts/pylint.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"---Git tools---
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"---Color themes---
Plug 'Pocco81/Catppuccino.nvim'
Plug 'tomasr/molokai'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
"--Tut plugins---
Plug 'ryanoasis/vim-devicons'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'mhinz/vim-startify'

call plug#end()

"---Set color scheme---
"colorchemes
"colorscheme onehalfdark
"colorscheme catppuccino
"colorscheme molokai
colorscheme monokai

"---Nvim settings---
set number
set laststatus=2
set cursorline
syntax on
syn keyword pythonBuiltin self
set mouse=a

"---Set clipboard---
"let g:clipboard = {
"      \   'name': 'myClipboard',
"      \   'copy': {
"      \      '+': ['tmux','load-buffer','-'],
"      \      '*': ['tmux','load-buffer','-'],
"      \   },
"      \   'paste': {
"      \      '+': ['tmux','save-buffer','-'],
"      \      '*': ['tmux','save-buffer','-'],
"      \   },
"      \   'cache_enabled': 1,
"      \ }
"Use system clipboard
set clipboard+=unnamedplus
   
"---Airline settings---
set showtabline=2
let g:airline#extensions#tabline#enabled = 1
set guioptions-=e
   
"---Vim-visual-multi mappings---
let g:VM_mouse_mappings = 1
let g:VM_maps = {}
let g:VM_maps["Undo"] = 'u'
let g:VM_maps["Redo"] = '<C-r>'

"---devicons font settings---
set guifont=DroidSansMono\ Nerd\ Font\ 11
let g:airline_powerline_fonts = 1
set fileencoding=chinese
set fileencodings=ucs-bom,utf-8,chinese

"---Tabline settings---
nnoremap <C-PageUp> :tabprevious<CR>
nnoremap <C-PageDown> :tabnext<CR>
set noexpandtab

"---Pylint settings---
let g:pymode_lint_ignore = ["C0103","C0114","C0301","C0302","C0415","E0110","E0401","E1101","R0201","R0901","R0902","R0903","R0904","R0911","R0912","R0913","R0914","R0915","R0921","R0922","R1702","R1732","W0212","W0231","W0401","W0511","W0603","W0614","W0702","W1203","W1505"]

"tut settings---"en new split panes to right and below
set splitright
set splitbelow
" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>
