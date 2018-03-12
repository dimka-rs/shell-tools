" install NERDTREE:
" git clone https://github.com/scrooloose/nerdtree.git  ~/.vim/bundle/nerdtree
" sudo apt install vim-pathogen
set tabstop=4
set number
set hlsearch
execute pathogen#infect()
syntax on
filetype plugin indent on
map <silent> <F2> :NERDTreeToggle<CR>

