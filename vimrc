" VIM Configuration - Thomas Augenstein

" Cancel the compatibility with Vi.
set nocompatible
set updatetime=100

" Activate pathogen
call pathogen#infect()

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

" Backspace behaves as expected
set backspace=indent,eol,start

" Expand tabs to spaces
set expandtab
set tabstop=4

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" Turn on persistent undo on
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

" Disable the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

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

" Use the dark version of Solarized
set background=dark
" let g:solarized_termcolors=16
let g:solarized_termtrans=1
let g:airline_solarized_bg='dark'
colorscheme solarized
