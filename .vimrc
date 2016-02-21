" uber vim config

" load plugins from vundle
source ~/.vim/plugins.vim

set nocompatible		" be iMproved, required
set autoread			" detect file changes

set backspace=indent,eol,start

set history=2000
set textwidth=120

" Tab and space handling
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set smartindent
set cinkeys=0{,0},:,0#,!^F

set clipboard=unnamed		" use system clipboard

" Much of the following comes from Nick Nisi:
" https://github.com/nicknisi/dotfiles/blob/master/vim/vimrc.symlink
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
set scrolloff=3 " lines of text around cursor
set shell=$SHELL
set cmdheight=2 " command bar height
set shortmess=a
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gz

set title " set terminal title

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

" switch syntax highlighting on
syntax on

set encoding=utf8
" let base16colorspace=256  " Access colors present in 256 colorspace"
" set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
" execute "set background=".$BACKGROUND
" execute "colorscheme ".$THEME

" set number " show line numbers
set relativenumber " show relative line numbers
set number " show the current line number"

set wrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking

set autoindent " automatically set indent of new line
set smartindent

"set nobackup
"set nowritebackup
"set noswapfile
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" => StatusLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2 " show the satus line all the time

" mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wipeout buffer
nmap <silent> <leader>b :bw<cr>

" disable ex mode
noremap Q <NOP>

" set paste toggle
set pastetoggle=<F6>
" and toggle paste mode
map <leader>v :set paste!<cr>

"" Plugin specific keymappings/settings
""""""""""""""""""""""""""""""""""""""""""""
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=2
" remove some files by extension
let NERDTreeIgnore = ['\.js.map$']
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
 nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=2
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'


" base16 color schemes
" let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark
colorscheme solarized

