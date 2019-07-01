" install NERDTREE:
" git clone https://github.com/scrooloose/nerdtree.git  ~/.vim/bundle/nerdtree
" sudo apt install vim-pathogen
set tabstop=4
set number
set hlsearch
set colorcolumn=+1
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
execute pathogen#infect()
syntax on
filetype plugin indent on
map <silent> <F2> :NERDTreeToggle<CR>
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>
