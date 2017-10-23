set backspace=indent,eol,start
set number              " Show line numbers
set showbreak=+++       " Wrap-broken line prefix
set textwidth=100       " Line wrap (number of cols)
set showmatch           " Highlight matching brace
set visualbell          " Use visual bell (no beeping)
filetype plugin indent on
set relativenumber
set cmdheight=2
set laststatus=2
set showcmd
set listchars=precedes:·
set list
set completeopt-=preview
highlight Normal ctermfg=grey ctermbg=black
let mapleader = ','
" vim plug
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'davidhalter/jedi-vim'
Plug 'mitsuhiko/vim-python-combined'
Plug 'Yggdroot/indentLine'
Plug 'isRuslan/vim-es6'
Plug 'posva/vim-vue'
Plug 'jiangmiao/auto-pairs'
Plug 'KeitaNakamura/neodark.vim'
Plug 'w0rp/ale'
call plug#end()
""Settings I like taken from SPF13
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
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
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions=croq softtabstop=4 textwidth=74 comments=:#\:,:#
" javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2
\ formatoptions=croq softtabstop=4 textwidth=74
" vue
autocmd FileType vue setlocal expandtab shiftwidth=2 tabstop=2
\ formatoptions=croq softtabstop=4 textwidth=74
" control p
"
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/](\.git|\.hg|\.svn|_site|node_modules)$',
 \ }

colorscheme neodark
