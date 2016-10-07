set nocompatible
filetype off   
syntax on
"need to do this to support molokai color scheme"
set t_Co=256
set background=dark

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"visualize the file structure 
Plugin 'scrooloose/nerdtree.git'
"for navigating vim with tmux
Plugin 'christoomey/vim-tmux-navigator'
"fuzzy search files
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
"color schemes for vim
Plugin 'flazz/vim-colorschemes'
"tab completion engine
Plugin 'Valloric/YouCompleteMe'
"useful for code that requires code to be wrapped with paranthesis or quotes
Plugin 'tpope/vim-surround'
"helpful for commenting things
Plugin 'scrooloose/nerdcommenter'
"boilderplate code snippets for rapid coding
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'taglist.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

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
" incremental search
set incsearch
" highlighted search
set hlsearch

" cross for vim cursor
set cursorline
set cursorcolumn
set backspace=indent,eol,start

"
set laststatus=2
set ttimeoutlen=50

"indents"
set shiftwidth=4
set tabstop=4
set expandtab

" set color "
let g:airline_theme = 'molokai'
colorscheme monokain

"airline settings

"nerd tree
map <C-n> :NERDTreeToggle<CR>

"currently syntastic is unused
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"ultisnippet configuration"
"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetsDir        = $HOME.'/.vim/UltiSnips/'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-h>"

"If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"work around for youcompleteme with ultisnips"
let g:ycm_complete_in_comments = 1 
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_collect_identifiers_from_comments_and_strings = 1 
