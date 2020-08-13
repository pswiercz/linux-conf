let python_highlight_all=1
syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
"set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set splitbelow
set splitright

set nonu
set relativenumber

set encoding=utf-8


"split navigations
noremap <Space> <Nop>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



autocmd FileType python map <buffer> <C-@> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-@> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

map <F1> :w <CR> :source ~/.vimrc<CR>
map <F2> :NERDTreeToggle<CR>


"map <C-@> :echo 'date ' . strftime('%c')<CR>

"noremap   <silent> cc      :s,^\(\s*\)[^# \t]\@=,\1# ,e<CR>:nohls<CR>zvj
"noremap   <silent> cu      :s,^\(\s*\)# \s\@!,\1,e<CR>:nohls<CR>zvj

noremap   <buffer> K      :s,^\(\s*\)[^# \t]\@=,\1#,e<CR>:nohls<CR>zvj
noremap   <buffer> <C-K>  :s,^\(\s*\)#\s\@!,\1,e<CR>:nohls<CR>zvj

set colorcolumn =120
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'gruvbox-community/gruvbox'
Plug 'davidhalter/jedi-vim'
Plug 'tomasr/molokai'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

"Plug 'vim-scripts/Conque-GDB'


call plug#end()

"let g:gruvbox_contrast_dark = 'medium'
set termguicolors
colorscheme ghostshell 
"set background=dark


set guicursor=n-v-c:block
set guicursor+=i-ci-ve:block-blinkwait175-blinkon250-blinkoff150



"call togglebg#map("<F5>")
"imap <F5> <Esc>:w<CR>:!clear;python3 %<CR>


if executable('rg')
    let g:rg_derive_root='true'
endif
