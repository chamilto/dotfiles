"===========
" GENERAL
"===========
let mapleader = ','
set backspace=indent,eol,start
set number              " Show line numbers
set linebreak           " Break lines at word (requires Wrap lines)
set showbreak=+++       " Wrap-broken line prefix
set textwidth=100       " Line wrap (number of cols)
set showmatch           " Highlight matching brace
set visualbell          " Use visual bell (no beeping)
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

"===========
" MOVEMENT
"===========
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"===========
" VIM PLUG
"===========
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-system-copy'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'psf/black', { 'tag': '19.10b0' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
call plug#end()

"===========
" COC.VIM
"===========
set nobackup
set nowritebackup
set signcolumn=yes
set hidden
set updatetime=300
set statusline^=%{coc#status()}

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

"===========
" FZF (ctrl-p)
"===========
nnoremap <c-p> :FZF<cr>

"===========
" NERD TREE
"===========
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
map <C-n> :NERDTreeToggle<CR>
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
let g:indentLine_fileTypeExclude = ["nerdtree"]

"===========
" SYNTAX
"===========
" coc cmds:
" :CocInstall coc-python
syntax enable
\ formatoptions=croq softtabstop=4 textwidth=74 comments=:#\:,:#
" javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2
\ formatoptions=croq softtabstop=2 textwidth=74
" vue
autocmd FileType vue setlocal expandtab shiftwidth=2 tabstop=2
\ formatoptions=croq softtabstop=2 textwidth=74
autocmd FileType vue syntax sync fromstart
" rust
let g:rustfmt_autosave = 1

autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.vue :%s/\s\+$//e

"===========
" Python-Black
"===========
let g:black_linelength = 120
autocmd BufWritePre *.py execute ':Black'

"===========
" Colors
"===========
colorscheme nord
"highlight Normal ctermfg=grey ctermbg=black
"hi Normal     ctermbg=NONE guibg=NONE
"hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

"===========
" Light Line
"===========
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component_function': {
\   'cocstatus': 'coc#status'
\ },
\ }

" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
