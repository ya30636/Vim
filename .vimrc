set clipboard=unnamed
set hlsearch            
set backspace=2         
set autoindent          
set ruler               
set showmode            
set nu                 
set mouse=a
set nocompatible
filetype off
syntax on  
"set makeprg=g++\ -Wall\ -g\ -o\ %<\ %
"nmap <C-c><C-c> :make<CR><CR> :copen<CR>
nmap <C-c><C-c> :!gcc -g -Wall % -o %:r<CR>
:vmap <C-c> "*y
:imap <C-v> <ESC>"*gPa
:nmap <C-v> "*gP



"""" for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

"""" for plugin YouCompleteMe
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"""" for plugin syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

