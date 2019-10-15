" install NERDTREE:
" git clone https://github.com/scrooloose/nerdtree.git  ~/.vim/bundle/nerdtree
" sudo apt install vim-pathogen
set expandtab
set shiftwidth=4
set tabstop=4
set number
set hlsearch
set colorcolumn=+1
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
set title
"#set mouse=a
execute pathogen#infect()
syntax on
filetype plugin indent on
map <silent> <F2> :NERDTreeToggle<CR>
" not sure which one is better
"noremap <F3> :set invnumber<CR>
"inoremap <F3> <C-O>:set invnumber<CR>
map <silent> <F3> :set invnumber<CR>
" turn highlight off
map <silent> <F4> :nohl<CR>
" powerline-fonts for vim-airline
let g:airline_powerline_fonts = 1
