let g:airline_powerline_fonts = 1
" let g:airline_section_a = '⌚%{strftime("%H:%M")}'
let g:airline_left_sep = "\ue0c6"
let g:airline_right_sep = ""
" let g:airline_theme = 'dark'
" let g:airline_extensions = ['branch', 'tabline']
let g:airline_extensions = ['coc', 'branch', 'virtualenv', 'keymap', 'nrrwrgn']
" set the CN (column number) symbol:
" let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])
" Hide mode
" set noshowmode


" let window_symbol = ['', '①', '②', '③', '④', '⑤', '⑥', '⑦', '⑧', '⑨', '⑩']
" let g:airline_section_a = "%{window_symbol[winnr()]}"

function! WindowNumber(...)
    let builder = a:1
    let context = a:2
    " let g:window_symbol = ['', '①', '②', '③', '④', '⑤', '⑥', '⑦', '⑧', '⑨', '⑩']
    let g:window_symbol = ['𝟬 ', '|𝟭', '|𝟮', '|𝟯', '|𝟰', '|𝟱', '|𝟲', '|𝟳', '|𝟴', '|𝟵']
    call builder.add_section('airline_a', "%{g:window_symbol[winnr()]}")
    return 0
endfunction

call airline#add_statusline_func('WindowNumber')
" call airline#add_inactive_statusline_func('WindowNumber')
