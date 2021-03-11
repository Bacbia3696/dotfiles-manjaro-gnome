let g:AutoPairsShortcutBackInsert=""
augroup autopair
    autocmd!
    autocmd FileType html        let b:AutoPairs = AutoPairsDefine({'<!--' : '-->'})
    autocmd FileType php         let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})
    autocmd FileType cuda        let b:AutoPairs = AutoPairsDefine({'<<<' : '>>>'})
    autocmd FileType jst         let b:AutoPairs = AutoPairsDefine({'<%' : '%>', '<%=' : '%>'})
    autocmd FileType htmldjango  let b:AutoPairs = AutoPairsDefine({'{%' : '%}'})
    autocmd FileType python      let b:AutoPairs = AutoPairsDefine({'f''' : ''''})
    autocmd FileType lisp,scheme let b:AutoPairs = AutoPairsDefine({'''' : '', '`' : ''})
    autocmd FileType tex         let b:AutoPairs = AutoPairsDefine({'$' : '$'})
augroup end
nnoremap <F4> :UndotreeToggle<cr>
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"
let g:closetag_xhtml_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"

let g:closetag_emptyTags_caseSensitive = 1
let g:livepreview_cursorhold_recompile = 0
autocmd FileType lisp let g:rainbow_active = 1
