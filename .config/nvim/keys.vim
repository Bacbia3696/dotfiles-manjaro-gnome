" Emacs like behavior in insert mode
noremap! <C-a> <Home>
noremap! <C-e> <End>
noremap! <C-f> <Right>
noremap! <C-b> <Left>
noremap! <C-p> <Up>
noremap! <C-n> <Down>
noremap! <M-BS> <C-w>
noremap! <M-f> <C-Right>
noremap! <M-b> <C-Left>
inoremap <M-d> <ESC>lcw
" inoremap <C-j> <ESC>o
" vnoremap <C-j> <ESC>o
inoremap <C-d> <Del>
inoremap <C-k> <C-o>D
vnoremap <C-g> <C-c>
onoremap <C-g> <C-c>
noremap! <C-g> <C-c>
nnoremap <C-x><C-f> :CocList files<CR>
noremap <C-x><C-s> :w<CR>
noremap! <C-x><C-s> <ESC>:w<CR>
noremap <C-x><C-c> :confirm qa<CR>
noremap! <C-x><C-c> <ESC>:confirm qa<CR>
nnoremap <C-x>h ggVG
nnoremap <C-x>1 :on<CR>
nnoremap <C-x>0 :q<CR>
" Pick leader key
let mapleader="\<Space>"
" Spacemacs like
" nnoremap <silent> <leader>fs :w<CR>
" nnoremap <silent> <leader>fS :wa<CR>

" nnoremap <C-s> mm:silent exec ":Format"<CR> <bar> :w<CR>`m
" inoremap <C-s> <ESC>mm:silent exec ":Format"<CR> <bar> :w<CR>`m
nnoremap <silent> <C-s> mm:silent! exec "Format" <bar> w <bar> silent! exec "normal `m"<CR>
inoremap <silent> <C-s> <ESC>mm:silent! exec "Format" <bar> w <bar> silent! exec "normal `m"<CR>
" edit config file
nnoremap <leader>vf :e $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC<CR>:PlugInstall<CR>
" clear search
nnoremap <leader><leader> :nohl<CR>
nnoremap <leader>q :confirm qa<CR>

" quit terminal
" tnoremap <Esc> <C-\><C-n>
" high light last past
nnoremap <leader>p `[v`]
" Create new tab, alt-number to change tab
nnoremap <M-t> :tabnew<CR>
for i in range(0,9) | execute 'noremap <silent> <M-'.i.'> :'.i."wincmd w<cr>" | endfor
for i in range(0,9) | execute 'inoremap <silent> <M-'.i.'> <ESC>:'.i."wincmd w<cr>" | endfor
for i in range(0,9) | execute 'tnoremap <silent> <M-'.i.'> <C-\><C-n>:'.i."wincmd w<cr>" | endfor

for i in range(0,9) | execute 'noremap <leader>'.i.' '.i.'gt' | endfor

nnoremap <M-j> gT
nnoremap <M-k> gt
inoremap <M-j> <ESC>gTa
inoremap <M-k> <ESC>gta

nnoremap <C-q> :confirm q<CR>
inoremap <C-q> <ESC>:confirm q<CR>

" Delete in visual mode
vnoremap <leader>d "_d
vnoremap <leader>p "_dhp

" Save session
nnoremap <leader>S :mksession!<CR>:qa<CR>

" Open current file with xdg-open
nnoremap <leader>o :!xdg-open %<CR>
" Open current folder
nnoremap <leader>O :!xdg-open $(dirname %)<CR>

" Move faster in normal mode with arrow key
nnoremap <Up> <C-u>zz
nnoremap <Down> <C-d>zz

