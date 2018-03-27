set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" To install plugins, add below and then run:
" $ vim +PluginInstall +qall
"
" ----- Making Vim look good ------------------------------------------
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
"Plugin 'joshdick/onedark'

Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'majutsushi/tagbar'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-syntastic/syntastic'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'ervandew/supertab'
"Plugin 'drmikehenry/vim-fixkey'
Plugin 'sheerun/vim-polyglot'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plugin 'Raimondi/delimitMate'

Plugin 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
" Plugin 'jez/vim-c0'
" Plugin 'jez/vim-ispc'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'stanangeloff/php.vim'
Plugin 'elzr/vim-json'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
" Plugin 'frigoeu/psc-ide-vim'
" Plugin 'raichoo/purescript-vim'
"Plugin 'Shougo/deoplete.nvim'
Plugin 'tomlion/vim-solidity'

" ---- Extras/Advanced plugins ----------------------------------------
" Autocomplete (nvim only)
Plugin 'roxma/nvim-completion-manager'
Plugin 'roxma/nvim-cm-tern'
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Buffer explorer
Plugin 'jlanzarotta/bufexplorer'
" Highlight and strip trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'
" Easily surround chunks of text
Plugin 'tpope/vim-surround'
" Align CSV files at commas, align Markdown tables, and more
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Automaticall insert the closing HTML tag
Plugin 'HTML-AutoCloseTag'
" Allow vim to run external process (such as tsserver)
Plugin 'Shougo/vimproc'
"
" Make tmux look like vim-airline (read README for extra instructions)
"Plugin 'edkolev/tmuxline.vim'
" All the other syntax plugins I sometimes use
"Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'tpope/vim-liquid'
Plugin 'cakebaker/scss-syntax.vim'

" Save workspaces
Plugin 'thaerkh/vim-workspace'

call vundle#end()

filetype plugin indent on

"--- general settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set cursorline

syntax on

"The rest deal with whitespace handling and
"mainly make sure hardtabs are never entered
"as their interpretation is too non standard in my experience
set softtabstop=4
" Note if you don't set expandtab, vi will automatically merge
" runs of more than tabstop spaces into hardtabs. Clever but
" not what I usually want.
set expandtab
set shiftwidth=4
set shiftround
set nojoinspaces

set mouse=a
let mapleader = "\\"

" We need this for plugins like Syntastic and vim-gitgutter which put symbols
" in the sign column.
hi clear SignColumn

" ----- Plugin-Specific Settings --------------------------------------

" ~~~~~ editorconfig settings ~~~~~
"let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Toggle this to "light" for light colorscheme
set background=dark

" Uncomment the next line if your terminal is not configured for solarized
" let g:solarized_termcolors=256

" ----- altercation/vim-colors-solarized settings -----
" Set the colorscheme
" colorscheme solarized

" --- gruvbox settings ---
"let g:gruvbox_italic=1
colorscheme gruvbox

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" Use the solarized theme for the Airline status bar
let g:airline_theme='hybrid'

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- ctrlp settings -----
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_custom_ignore = { 'dir':['node_modules','no-upload','no-uploads'] }
"let g:ctrlp_custom_ignore = ['node_modules','no-upload','no-uploads']
set wildignore+=*/node_modules/*,*/no-upload/*,*/no-uploads/*

" --- vim-javascript settings ---
" Enables syntax highlighting for JSDocs.
let g:javascript_plugin_jsdoc = 1
" Enables some additional syntax highlighting for NGDocs. Requires JSDoc
" plugin to be enabled as well.
let g:javascript_plugin_ngdoc = 1
" Enables syntax highlighting for Flow.
let g:javascript_plugin_flow = 1

"
" ---- Quramy/tsuquyomi typescript settings ----
autocmd FileType typescript setlocal completeopt+=menu,preview

" ----- scrooloose/syntastic settings -----
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = 'npm run eslint --'
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END
let g:syntastic_scss_checkers = []

" ---- Shougo/deoplete settings ----
"let g:deoplete#enable_at_startup = 1

" ----- airblade/vim-gitgutter settings -----
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ------ plasticboy/vim-markdown settings -----
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_disabled = 1

" ----- Plugin 'thaerkh/vim-workspace' settings -----
let g:workspace_session_disable_on_args = 1
let g:workspace_session_name = '.session.vim'
let g:workspace_autosave_ignore = ['gitcommit', 'NERDTree', 'tagbar']

" ----- required for DevIcons -----
set encoding=utf8
"set guifont=Inconsolata\ Nerd\ Font\ Complete\ Mono\ 12
set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete\ Mono\ 12

" some python Environment settings
let g:python3_host_prog = '/home/jalal/.pyenv/versions/general/bin/python'

source .vim/keymappings

