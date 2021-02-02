" Some servers have issues with backup files, see #649
let g:coc_global_extensions= [
    \ 'coc-explorer',
    \ 'coc-git',
    \ 'coc-emmet',
    \ 'coc-snippets',
    \ 'coc-smartf',
    \ 'coc-lists',
    \ 'coc-clock',
    \ 'coc-marketplace',
    \ 'coc-html',
    \ 'coc-yaml',
    \ 'coc-yank',
    \ 'coc-actions',
    \ 'coc-prettier',
    \ 'coc-emoji',
    \ 'coc-terminal',
    \ 'coc-import-cost',
    \ 'coc-docker',
    \ 'coc-webpack',
    \ 'coc-highlight',
    \ 'coc-flutter-tools',
    \ 'coc-sql',
    \ 'coc-go',
    \ 'coc-java',
    \ 'coc-vimtex',
    \ 'coc-r-lsp',
    \ 'coc-python',
    \ 'coc-vimlsp',
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-scala',
    \ 'coc-css',
    \ 'coc-xml',
    \ 'coc-svg',
    \ 'coc-sh',
  \ ]

set nobackup
set nowritebackup

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
" set signcolumn=yes

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Coc Snippets
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" " Make Tab to move, default is <C-j> <C-k>
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<S-tab>'

" Make CR to confirm snip, default is <C-y>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <C-y> <C-n><C-p><ESC>a

" Highlight comment json
autocmd FileType json syntax match Comment +\/\/.\+$+

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>cr <Plug>(coc-rename)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Remap for do codeAction of current line
nmap <leader>ca  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>cF  <Plug>(coc-fix-current)
" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a  <Plug>(coc-codeaction-selected)<CR>

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)


" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" reset keybinding
nnoremap <C-i> <C-i>

" Coc explorer
nmap ge :CocCommand explorer<CR>
nmap <F2> :CocCommand explorer<CR>

" Smartf
nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
nmap ; <Plug>(coc-smartf-repeat)
nmap , <Plug>(coc-smartf-repeat-opposite)

augroup Smartf
  autocmd User SmartfEnter :hi Conceal guifg=#251f44 guibg=#fe91ca gui=italic
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=Grey30 guibg=NONE gui=NONE
augroup end

" Terminal
nmap <leader>' <Plug>(coc-terminal-toggle)
nmap <leader>t :FloatermToggle<CR>
" tnoremap <leader>t :FloatermToggle<CR>
" tnoremap <C-q> <C-\><C-n>:FloatermToggle<CR>
tnoremap <C-q> <C-\><C-n><ESC>

" Coc list
nnoremap <leader>l :CocList<CR>
nnoremap <leader>e :CocList extensions<CR>
nnoremap <leader>ff :CocList files<CR>
nnoremap <leader>fr :CocList mru<CR>
nnoremap <leader>m :CocList marketplace<CR>
nnoremap <leader>d :CocList diagnostics<CR>
nnoremap <leader>bb :CocList buffers<CR>
nnoremap <leader>g :CocList grep<CR>
nnoremap <leader>y :CocList yank<CR>
nnoremap <leader>p `[v`]
" Coc
nnoremap <leader>cc :CocCommand<CR>
nnoremap <leader>cf :CocConfig<CR>
nnoremap <leader>cs :CocCommand snippets.openSnippetFiles<CR>

" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
