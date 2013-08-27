execute pathogen#infect()

syntax on	    		" Syntax highlighting

colorscheme railscasts


set clipboard=unnamed

set showcmd		  	" Shows last command
"set number		  	" Shows line numbers
"set visualbell		" Visual bell indicator instead of sound

set laststatus=2	" Always show status bar
set backspace=2   " Allow backspace past insert start
set tabstop=2     " Use 2 spaces for tabs
set shiftwidth=2  " Number of space to use for indenting
set expandtab     " Change tabs to space in insert mode

set textwidth=80            " 80 column limit
set colorcolumn=+1          " Highlight 80 column limit
hi ColorColumn ctermbg=234  " Light gray

" http://items.sjbach.com/319/configuring-vim-right
set hidden		  	" NEEDED? Keeps buffers in memory, presists undo history for bg'd buffers

set history=1000	" More command scrollback history

set wildmenu		  " Show completions when hitting <TAB>
set wildmode=list:longest

set scrolloff=3 	" Scroll 3 lines when passing border

set ignorecase		" Ignore case for / searches
set smartcase		  " Override ignore case if search contains caps

set shortmess=atI	" Use abbreviations, truncate with <, No Intro

set hlsearch	  	" Highlight search terms :noh clear highlighting
set incsearch	  	" Highlight search terms as typed

set ruler         " Show line number and column count

set wildignore+=.git,tmp,gems,public,vendor,log,spec

" Set status line to: filename, git branch, rvm version, line 1/X
set statusline=%F%m%r%h%w\
set statusline+=%{fugitive#statusline()}\
set statusline+=\ [line\ %l\/%L\ (%v)]

if has("mouse")
  set mouse=a
endif

filetype plugin indent on

" Use a common directory for backups and swp files
" Create it if it doesn't exist
silent execute '!mkdir -p ~/.vim_backups'
set backupdir=~/.vim_backups/
set directory=~/.vim_backups/

runtime macros/matchit.vim

" Use different cursor for insert mode
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
endif

let mapleader = ","

" Clear highlighted text from searches
map <silent> <Leader>h :silent :noh<CR>

" Prevent middle click from pasting text into the buffer
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

" No Help
map <F1> <Esc>
imap <F1> <Esc>

