set number
set showtabline=2
set laststatus=2
set encoding=UTF-8

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" python autocomplete
Bundle 'Valloric/YouCompleteMe'
" NerdTree
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'instant-markdown/vim-instant-markdown', {'rtp': 'after'}

" VimAirline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/seoul256.vim'
Plugin '907th/vim-auto-save'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:jedi#popup_select_first = 0

" some NERDTree configs..
autocmd VimEnter * NERDTree " autostart

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:airline_theme='minimalist'
let g:NERDTreeNodeDelimiter = "\u00a0"
colo seoul256
set nu " i dont know what is this, but this works
set ts=4
set sw=4
set mouse=a " mouse in all 
set showmatch
set expandtab
syntax on
set ruler
set title


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" python highlight
" let python_highlight_all=1

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

:set textwidth=80
:set wrap
let g:auto_save = 1
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
