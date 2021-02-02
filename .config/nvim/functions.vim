" remove whte space
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
command! TrimWhitespace call TrimWhitespace()

fun! EnableAutoSave()
    silent write
    augroup autosave
        autocmd TextChanged,InsertLeave <buffer> silent write
    augroup END
endfunction
command! EnableAutoSave call EnableAutoSave()

fun! DisableAutoSave()
    augroup autosave
        autocmd!
    augroup END
endfunction
command! DisableAutoSave call DisableAutoSave()

fun! ToggleAutoSaveGlobally()
    if get(g:, "auto_save_global", 1)
        silent! wall
        augroup autosaveglobal
            autocmd!
            autocmd TextChanged,InsertLeave * silent! write
        augroup END
        nnoremap u 2u
        let g:auto_save_global = 0
    else
        augroup autosaveglobal
            autocmd!
        augroup END
        nunmap u
        let g:auto_save_global = 1
    endif
endfunction
command! ToggleAutoSaveGlobally call ToggleAutoSaveGlobally()
