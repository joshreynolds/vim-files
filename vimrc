call pathogen#runtime_append_all_bundles() " Loads all plugins in the bundle dir 
call pathogen#helptags()       						 " Build help tags for loaded bundles

colorscheme desert

syntax on	    		" Syntax highlighting
set ruler	    		" Shows line number, relative position in file on status line
set showcmd		  	" Shows last command
set number		  	" Shows line numbers
set visualbell		" Visual bell indicator instead of sound
set laststatus=2	" Always show status bar

set tabstop=2
set shiftwidth=2
set expandtab

" http://items.sjbach.com/319/configuring-vim-right
set hidden		  	" Keeps buffers in memory, presists undo history for bg'd buffers
set history=1000	" More command scrollback history

set wildmenu		  " Show comlpetions when hitting <TAB>
set wildmode=longest,list

set title		    	" Update terminal title
set scrolloff=3 	" Scroll 3 lines when passing border

set ignorecase		" Ignore case for / searches
set smartcase		  " Override ignore case if search contains caps

set shortmess=atI	" Use abbreviations, truncate with <, No Intro 

set hlsearch	  	" Highlight search terms :noh clear highlighting
set incsearch	  	" Highlight search terms as typed


filetype on
filetype plugin on	" Load plugin for file type if any 
filetype indent on	" Auto ident

" Use a common directory for backups and swp files
" Create it if it doesn't exist
silent execute '!mkdir -p ~/.vim_backups'
set backupdir=~/.vim_backups/
set directory=~/.vim_backups/

let mapleader = ","

" Toggle NERDTree file viewer plugin
map <Leader>, :NERDTreeToggle<CR>

" Clear highlighted text from searches
map <silent> <Leader>h :silent :noh<CR>	

" Prevent middle click from pasting text into the buffer
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
