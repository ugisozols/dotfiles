" Forget being compatible with good ol' vi
" set nocompatible

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let mapleader=","

colorscheme railscasts
set guifont=Monaco:h15

map <leader>f :CommandTFlush<cr>\|:CommandT<cr>

map <C-Tab> :bnext<cr>

" Turn off highlight search
nmap <silent> ,n :nohls<CR>

" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" Toggle the NERD Tree on an off with F7
nmap <F7> :NERDTreeToggle<CR>

" Turn on syntax highlighting
syntax enable
" Turn on file type detection
filetype plugin indent on         

" Display incomplete commands
set showcmd                      
" Display the mode you're in
set showmode           

" Intuitive backspacing
set backspace=indent,eol,start    

" Handle multiple buffers better
set hidden                      

" Enhanced command line completion
set wildmenu                     
" Complete files like a shell
set wildmode=list:longest         

" Case-insensitive searching
set ignorecase                   
" But case-sensitive if expression contains a capital letter
set smartcase                     

" Show line numbers
set number                       
" Show cursor position
set ruler                         

" Highlight matches as you type
set incsearch                    
" Highlight matches
set hlsearch                      

" Turn on line wrapping
set wrap                         
" Show 3 lines of context around the cursor
set scrolloff=3                   

" Set the terminal's title
set title                         

" No beeping
set visualbell                    

" Don't make a backup before overwriting a file
set nobackup                     
" And again
set nowritebackup                
" Keep swap files in one location
set directory=~/.vim/tmp

" Global tab width
set tabstop=2                   
" And again, related
set shiftwidth=2                
" Use spaces instead of tabs
set expandtab                    

" Show the status line all the time
set laststatus=2                  
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set grepprg=ack

" Comment/uncomment multiple lines
source ~/.vim/vcomments.vim
map <C-a> :call Comment()<CR>
map <C-b> :call Uncomment()<CR>
