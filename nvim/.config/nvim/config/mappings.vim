" set mapleader to ','
let mapleader = ','

" n always searches forward; N backward
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

" make the <c-n> and <c-p> keys as smart as <up>/<down> when moving through
" commandline history (<up>/<down> only move to previous commands, which
" match the current commandline content; <c-n>/<c-p> move through all
" previous commands) 
cnoremap <c-n>  <down>
cnoremap <c-p>  <up>

" make <leader>l not just redraw the screen, but also un-highlight the search
" results and rebuild syntax highliting to have a cure-all for any kind of
" display problems/display resetting
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

" execute the SessionSave command of the autosession.vim plugin and close vim when executing :Q
" and enable the use of ! to force closing even if buffer is not saved
command -bang Q :SessionSave | if <bang>0 | q! | else | q | endif

" execute the SessionSave command of the autosession.vim plugin and write +
" close vim when executing :WQ and enable ! to force write-close
command -bang WQ :SessionSave | if <bang>0 | wq! | else | wq | endif

" NERDTree keybining
noremap <C-n> :NERDTreeToggle<CR>

" leave the insert mode by pressing a key combination in the home row, which
" is uncommon in insert mode
inoremap jj <esc>

" use ö key for:, because it's a key on a very nice position on german keyboards
nnoremap ö :
