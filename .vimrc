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
highlight Normal ctermfg=grey ctermbg=black
let mapleader = ','
" vim plug
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'davidhalter/jedi-vim'
Plug 'mitsuhiko/vim-python-combined'
Plug 'pangloss/vim-javascript'
Plug 'Yggdroot/indentLine'
Plug 'posva/vim-vue'
Plug 'w0rp/ale'
Plug 'KeitaNakamura/neodark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'nightsense/simplifysimplify'
Plug 'rizzatti/dash.vim'
Plug 'christoomey/vim-system-copy'
Plug 'itchyny/lightline.vim'
call plug#end()
""Settings I like taken from SPF13
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
map <C-n> :NERDTreeToggle<CR>

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=1
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=1
let g:indentLine_conceallevel=1
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char = '·'
" syntax
syntax enable
" python
let python_highlight_all=1
set completeopt-=preview
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions=croq softtabstop=4 textwidth=74 comments=:#\:,:#
" javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2
\ formatoptions=croq softtabstop=4 textwidth=74
" vue
autocmd FileType vue setlocal expandtab shiftwidth=2 tabstop=2
\ formatoptions=croq softtabstop=4 textwidth=74
" control p
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/](\.git|\.hg|\.svn|_site|node_modules)$',
 \ }
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.vue :%s/\s\+$//e

colorscheme neodark
