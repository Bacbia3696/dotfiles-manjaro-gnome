"""""""""""""""""""""""Add custom config"""""""""""""""""""""""
"↵,→,~,↷,↶,·,¬,⇨,⋄,‸,⇥,➜,⟫,➪,➭
set listchars=eol:⮐,tab:➜\·,trail:⚬
set list

set termguicolors " add more colors to display
set cursorline " add visual line
syntax on

""""""""""""""""Srcery"""""""""""""""""
let g:srcery_italic=1
let g:srcery_transparent_background=1
let g:srcery_inverse_matches=1
colorscheme srcery
hi! link NonText SrceryWhite
hi MatchParen cterm=bold ctermfg=233 ctermbg=208 gui=bold guifg=#ffbb88 guibg=#555599
hi SrceryXGray3 guifg=#909090

autocmd WinEnter,BufEnter * match SrceryXgray5 /	/


"""""""""""""""""Dracula"""""""""""""""""
" colorscheme dracula

"""""""""""""""""molokai"""""""""""""""""
" let g:rehash256 = 1
" colorscheme molokai
