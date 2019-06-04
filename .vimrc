set backspace=indent,eol,start
set number              " Show line numbers
set linebreak           " Break lines at word (requires Wrap lines)
set showbreak=+++       " Wrap-broken line prefix
set textwidth=100       " Line wrap (number of cols)
set showmatch           " Highlight matching brace
set visualbell          " Use visual bell (no beeping)
filetype plugin indent on
set cmdheight=2
set laststatus=2
set completeopt-=preview
set showcmd
set listchars=precedes:·
set laststatus=2
set t_Co=256
set mouse+=a        " Resize panes
set ttymouse=xterm2 " with mouse
set clipboard=unnamed " copy to macosx clipboard
set noshowmode
set statusline+=%F " Show full path of file
set noswapfile
set lazyredraw
highlight Normal ctermfg=grey ctermbg=black
let mapleader = ','

" vim plug
call plug#begin('~/.vim/plugged')
"Plug 'flazz/vim-colorschemes'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'davidhalter/jedi-vim'
Plug 'mitsuhiko/vim-python-combined'
Plug 'pangloss/vim-javascript'
Plug 'Yggdroot/indentLine'
Plug 'posva/vim-vue'
Plug 'w0rp/ale'
"Plug 'KeitaNakamura/neodark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'nightsense/simplifysimplify'
Plug 'rizzatti/dash.vim'
Plug 'christoomey/vim-system-copy'
Plug 'itchyny/lightline.vim'
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'liuchengxu/space-vim-dark'
Plug 'wolf-dog/nighted.vim'
"Plug 'drewtempelmeyer/palenight.vim'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" supertab
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

" Make FzF act like ctrl-p
nnoremap <c-p> :FZF<cr>


" nerd tree
""Settings I like taken from SPF13
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
map <C-n> :NERDTreeToggle<CR>

"let g:lightline = {
 "     \ 'colorscheme': 'seoul256',
 "     \ }
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '__pycache__']
let NERDTreeChDirMode=1
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=1
""let g:indentLine_conceallevel=1
""let g:indentLine_leadingSpaceEnabled = 1
""let g:indentLine_leadingSpaceChar = '·'
""let g:indentLine_char = '·'
let g:indentLine_fileTypeExclude = ["nerdtree"]
" syntax
syntax enable
" psql
let g:psql_type_default = 'pgsql'
" python
let python_highlight_all=1
set completeopt-=preview
setlocal indentexpr=
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions=croq softtabstop=4 textwidth=74 comments=:#\:,:#
" javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2
\ formatoptions=croq softtabstop=2 textwidth=74
" vue
autocmd FileType vue setlocal expandtab shiftwidth=2 tabstop=2
\ formatoptions=croq softtabstop=2 textwidth=74

autocmd FileType vue syntax sync fromstart

autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.vue :%s/\s\+$//e

hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

" Move without C-W
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Python debug command
command Db :normal i import pudb; pudb.set_trace()<ESC>
