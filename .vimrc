set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'francoiscabrol/ranger.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"Remap ranger hotkey to r
let g:ranger_map_keys = 0
nnoremap <leader>r :Ranger<CR>

syntax on

" for colours only"
" VertSplit is the line inbetween two vertical panes
" StatuslineNC is the staus line of the split that is not 
" currently in use status line is "" but in use
" fillchars+=vert:\" " sets the verticalsplit characters to nothing 
:hi VertSplit cterm=NONE, ctermfg=0
:set fillchars+=vert:\ 
:hi StatusLineNC cterm=NONE, ctermfg=15, ctermbg=NONE
:hi StatusLine cterm=NONE, ctermfg=1, ctermbg=NONE

" set leader key to space
let mapleader= " "

" open this file with leader-ev
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" update vimrc changes with leader-sv
:nnoremap <leader>sv :source $MYVIMRC<cr>

" enables line and collumn position
set ruler 

" sets tab width for all filetypes
" softtabstop is what vim will interpret as a tab using spaces to fill
" tabstop is what will be saved as a tab so in this case pressing tab twice
" will save a single tab
" shiftwidth is the tab distance when using < or > in visual mode
" expandtab means tabs are expanded to spaecs
set softtabstop=4
set shiftwidth=4
set expandtab
set tabstop=8
set autoindent

" asks to confirm when leaving a buffer that isn't saved
set confirm

" 2) shows relative line numbers
set number relativenumber

" highlights 80 char line limit
" highlight OverLength ctermbg=None ctermfg=red  guibg=#592929
" match OverLength /\%81v.\+/

" allows for autocompletion
" first tab will attempt complete the longest option
" second will open a menu
" third and onwards scrolls through menu
set wildmode=longest:full,full
set wildmenu
"forces splits to open below and on the right
set splitbelow splitright

" shortcuts for moving between splt panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" autoupdates the file if there have been changes
" assuming there are no unsaved changes in the buffer
set autoread
" the above only works in vim tabs 
" this will force vim to check for changes after 
" the cursor has been moved and works across
" different tmux/or terminal windows
au CursorMoved * checktime

" saves the file and runs it 
" key press is set to leader then a modifier because 
" im planning to use this for all sorts of compiling
" for now h will run and output to html (usefule for reading web pages in python)
" t will output to text file
" good for any interpreted languages that you want to be able to parse the output of while still in vim
nmap <leader>ch :w <bar>!./% > "%.html"<CR>
nmap <leader>ct :w <bar>!./% > "%.txt"<CR>


" shows commands as they are input in normal mode
set showcmd

" search options for highlighting and incremental search
" also ignores case unless any are included in the search
set incsearch
set hlsearch
set ignorecase
set smartcase

" 1) helps pasting using C+shift-v
" quicker pasting from yank buffer ("0) 
" keeps the functionality of caps
nmap <leader>p "0p
nmap <leader>P "0P

" please remap this shit its awful******
" used for breaking html document tags into their own lines 
" for badly formatted html that won't run through tidy  
nmap <leader>ht ni<CR><C-c>
map <leader>hi :%s!&nbsp;! !ge<CR>:%s!&lt;!<!ge<CR>:%s!&gt;!>!ge<CR>:%s!<br \/>!\r!ge<CR> :%s!<C-v><C-m>!\r!ge<CR>

" shortcuts for listing buffers and choosing from the list
nnoremap <leader>b :ls<CR>:b 

" remapping arrow keys to do nothing
nmap <up> <nop>
nmap <down> <nop>
nmap <right> <nop>
nmap <left> <nop>

" for commenting out python/bash code
nnoremap <leader>co :normal 0i# <CR>j

" enables folding of functions/classes 
" use za to fold
set foldmethod=indent
set foldlevel=2
set foldnestmax=10
set nofoldenable


