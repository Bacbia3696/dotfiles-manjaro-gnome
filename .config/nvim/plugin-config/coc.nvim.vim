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
    \ 'coc-emoji',
    \ 'coc-terminal',
    \ 'coc-import-cost',
    \ 'coc-docker',
    \ 'coc-webpack',
    \ 'coc-highlight',
    \ 'coc-floatinput',
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

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" GoTo code navigation.
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

command! -nargs=0 Format :silent! exec "call CocAction('format')"
command! -nargs=0 OR :silent! exec "call CocAction('runCommand', 'editor.action.organizeImport')"
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>Q  <Plug>(coc-fix-current)

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
nnoremap <leader>f :CocList files<CR>
nnoremap <leader>m :CocList marketplace<CR>
nnoremap <leader>d :CocList diagnostics<CR>
nnoremap <leader>b :CocList buffers<CR>
nnoremap <leader>g :CocList grep<CR>
nnoremap <leader>y :CocList yank<CR>
nnoremap <leader>p `[v`]
" Coc
nnoremap <leader>cc :CocCommand<CR>
nnoremap <leader>cf :CocConfig<CR>
nnoremap <leader>cs :CocCommand snippets.openSnippetFiles<CR>

autocmd BufRead,BufNewFile *.go call coc#config('suggest', {'languageSourcePriority': 50})



""""""""""""""""""""""""""""""""""""""""
""""""""""TAB STYLE""""""""""
""""""""""""""""""""""""""""""""""""""""
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" let g:coc_snippet_next = '<tab>'



""""""""""""""""""""""""""""""""""""""""
""""""""""CR STYLE""""""""""
""""""""""""""""""""""""""""""""""""""""
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

