"""""""""""""""""""""""Add custom config"""""""""""""""""""""""
" Display all white space character
" https://stackoverflow.com/questions/1675688/make-vim-show-all-white-spaces-as-a-character/1675698
"↵,→,~,↷,↶,·,¬,⇨,⋄,‸,⇥,➜,⟫,➪,➭
" set listchars=eol:¬,tab:➪\·,trail:⋄,space:˽
" set listchars=eol:¬,tab:➪\⸱,trail:⋄
set listchars=eol:⮐,tab:➜\ ,trail:⚬
set list

set termguicolors " add more colors to display
set cursorline " add visual line
syntax on

" Highlight custom text
" hi KeyWords guibg=yellow guifg=black
" match KeyWords /FIXME:.*/

""""""""""""""""Srcery"""""""""""""""""
let g:srcery_italic=1
let g:srcery_transparent_background=1
let g:srcery_inverse_matches=1
colorscheme srcery
hi! link NonText SrceryWhite
hi MatchParen cterm=bold ctermfg=233 ctermbg=208 gui=bold guifg=#ffbb88 guibg=#555599

" Fix highlight color for popup with srcery them
hi SrceryXGray3 guifg=#909090
let g:airline_theme = 'dark'


"""""""""""""""""OceanicNext"""""""""""""""""
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext


"""""""""""""""""Dracula"""""""""""""""""
" colorscheme dracula

"""""""""""""""""molokai"""""""""""""""""
" let g:rehash256 = 1
" colorscheme molokai

" colorscheme PaperColor

autocmd BufEnter * match SrceryXgray6 /	/
