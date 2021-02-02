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
