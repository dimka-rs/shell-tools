" PLUGINS:
" sudo apt install vim-pathogen
" git clone https://github.com/scrooloose/nerdtree.git  ~/.vim/bundle/nerdtree
" git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
" git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
" git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown
set expandtab
set shiftwidth=4
set tabstop=4
set number
set hlsearch
set colorcolumn=+1
colorscheme desert
" tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
" display whitespaces
set list
set listchars=tab:>-,trail:<
noremap <F5> :set list!<CR>
noremap <F6> :set expandtab!<CR>
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
set title
"set mouse=a
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
" powerline-fonts
let g:airline_powerline_fonts = 1
" vim-markdown no fold by default
let g:vim_markdown_folding_disabled = 1

