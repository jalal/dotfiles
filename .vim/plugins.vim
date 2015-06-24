" used by Vundle, from the manual recommendations
" 
filetype off			" required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()		" required

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" keep Plugin commands between vundle#begin/end
" utilities
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-sleuth' " detect indent style (tabs vs. spaces)
Plugin 'mattn/emmet-vim'
Plugin 'sickill/vim-pasta'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Slava/tern-meteor' " brings TernJS support
Plugin 'phleet/vim-mercenary' " HG support

" JavaScript
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
" Plugin 'jason0x43/vim-js-syntax'
" Plugin 'jason0x43/vim-js-indent'
Plugin 'wavded/vim-stylus'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'juvenn/mustache.vim'
Plugin 'moll/vim-node'
Plugin 'elzr/vim-json'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'dart-lang/dart-vim-plugin'
" Plugin 'kchmck/vim-coffee-script'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'marijnh/tern_for_vim'

" colorschemes
" Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()		" required
filetype plugin indent on	" required


