set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerd Tree
Plugin 'scrooloose/nerdtree'

" tagbar , required ctags
Plugin 'majutsushi/tagbar'

" fugitive git wrapper
Plugin 'tpope/vim-fugitive'

"SURROUND parentheses, brackets, quotes, XML tags, and more
Plugin 'tpope/vim-surround'

" Indent Guides
Plugin 'nathanaelkane/vim-indent-guides'

" Super tab, with supertab regular tab can be input as 'Ctrl + v' and then 'Tab'
Plugin 'ervandew/supertab'

"syntax
"python
"Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'


"colorscheme
Plugin 'zcodes/vim-colors-basic'
Plugin 'AlessandroYorba/Sierra'
Plugin 'mom0tomo/dotfiles'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
colorscheme sierra

set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab

"default split pos
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"python jedi-vim
"autocmd FileType python setlocal completeopt-=preview

"Indent Guide
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

nmap <f5> :NERDTree<CR>
nmap <f8> :TagbarToggle<CR>
