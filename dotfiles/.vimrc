" no backwards compatibility for enhanced awesomeness
set nocompatible

" syntax highlighting
syntax enable

" window management
nmap <leader><TAB> :vsp<return> <C-W>w
nmap <leader><leader> :vsp<return> <C-W>w :Explore<return>
nmap <TAB> <C-W>w
nmap <S-TAB> <C-W>W

" indentation
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" show whitespace
set list
set listchars=tab:>.

" line numbering
set number

" incremental search
set incsearch
set ignorecase
set smartcase
set nohlsearch

" highlight current line
set cul

" more screen realestate
set guioptions-=m
set guioptions-=T
set guioptions-=r

" no error bells
set noerrorbells
set novisualbell
set t_vb=
 
" no wrapping
set nowrap

" ruler at col 80
set cc=80

" wild menu
set wildmenu
set wildmode=list:longest,full

" no extra files
set nobackup 
set noswapfile 

" persistent undo
set undodir=$USERPROFILE/vimfiles/undodir
set undofile

" fix backspace
set backspace=indent,eol,start

" omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
inoremap <C-Space> <C-x><C-o>

" full screen
if has('gui_running')
    set lines=999 columns=999
endif

" status line
set laststatus=2

" highlight xaml files
autocmd BufNewFile,BufRead *.xaml set filetype=xml

" auto-strip whitespace
autocmd FileType c,cpp,py,rst,md autocmd BufWritePre <buffer> :%s/\s\+$//e

" setup Pathogen
execute pathogen#infect()

" setup Solarized theme
set background=dark
let g:solarized_contrast="high"
colo solarized

" setup Powerline
set encoding=utf-8
set guifont=DejaVu_Sans_Mono_for_Powerline:h10
let g:Powerline_symbols="fancy"

" setup CtrlP
nmap <C-p> :CtrlPMRU<return>

" setup DetectIndent
let g:detectindent_preferred_expandtab=1
let g:detectindent_preferred_indent=4
autocmd BufReadPost * :DetectIndent

" source depot
nmap <leader>e :silent !sd edit %<return> :e!<return>
nmap <leader>r :silent !sd revert %<return> :e!<return>
