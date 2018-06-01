" VIM Configuration - Thomas Augenstein

" Activate pathogen
call pathogen#infect()

" Cancel the compatibility with Vi.
set nocompatible
set updatetime=100
set autoread            " Set do auto read when a file has changed from the outside
set lazyredraw          " Don't redraw while executing macros
                        " (good performance config)

let mapleader = ","     " With a map leader it's possible to do extra key
                        " combinations like <leader>w for save etc.

" -- Display
set title               " Update the tilte of the window or terminal
set number              " Display line nunmbers
set ruler               " Display cursor position
set wrap                " Wrap lines when they are too long

set scrolloff=3         " Display at least 3 lines around the cursor
                        " (for scrolling)

set guioptions=T        " Enable the Toolbar

" -- Search
set ignorecase          " Ignore case when searching
set smartcase           " If there is an uppercase in the search term
                        " search casesensitive again
set incsearch           " Highlight search results when typing
set hlsearch            " Highlight search results

" -- Beep
set visualbell          " Prevent Vim from beeping
set noerrorbells        " Prevent Vim from beeping

" -- Search
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Backspace behaves as expected
set backspace=indent,eol,start

" Expand tabs to spaces
set expandtab           " Use spaces instead of tabs
set tabstop=4           " 1 tab = 4 spaces
set shiftwidth=4        " 1 tab = 4 spaces
set smarttab            " Be smart when using tabs ;)

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" Turn on persistent undo on
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

set history=500

" -- MRU PLugin
map <leader>f :MRU<CR>

" -- NERD Tree
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden = 0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize = 35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" Disable the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Make <Tab> switch windows
map <Tab> <C-W>w
map <Bar> <C-W>v<C-W><Right>
map -     <C-W>s<C-W><Down>

" Easier movement between windows with Ctrl - hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable syntax highlighting
syntax enable

" Enable file specific behavior like syntax highlighting and identation
filetype on
filetype plugin on
filetype indent on

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl6_checker = 1
let g:syntastic_perl6_checkers = ['perl6']
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl']

" Use the dark version of Solarized
set background=dark
" let g:solarized_termcolors=16
let g:solarized_termtrans=1
let g:airline_solarized_bg='dark'
colorscheme solarized
