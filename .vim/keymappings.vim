" ============================================
" MAPPINGS HERE
" ============================================
map <C-n> :NERDTreeToggle<CR>
"map <C-m> :TagbarToggle<CR><Paste>

" switch to next/previous buffer
nmap <C-[> :bp<CR>
imap <Esc><C-[> :bp<CR>
nmap <C-]> :bn<CR>
imap <Esc><C-]> :bn<CR>

" Ctrl-S to save the file
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a

" switch to command mode easily (like <ESC>)
inoremap jk <ESC>
inoremap kj <ESC>

" add a ; at the end of the line with Alt-;
nnoremap <M-;> m`A;<Esc>``
inoremap <M-;> <Esc>m`A;<Esc>``

" Toggle Workspace sessions
nnoremap <Leader>ss :ToggleWorkspace<CR>

" ===========================================
" keymappings to move windows around
"
" These are taken from:
" http://www.agillo.net/simple-vim-window-management/
"
" This first group create a window if there is not one to
" move to in the requested direction
"
function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr()) "we havent moved
    if (match(a:key,'[jk]')) "were we going up/down
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

map <leader>h              :call WinMove('h')<cr>
map <leader>k              :call WinMove('k')<cr>
map <leader>l              :call WinMove('l')<cr>
map <leader>j              :call WinMove('j')<cr>

" keymapping to close, rotate and move windows if needed.
"map <leader>wc :wincmd q<cr>
"map <leader>wr <C-W>r
"map <leader>H              :wincmd H<cr>
"map <leader>K              :wincmd K<cr>
"map <leader>L              :wincmd L<cr>
"map <leader>J              :wincmd J<cr>
" ===========================================

" EOF

