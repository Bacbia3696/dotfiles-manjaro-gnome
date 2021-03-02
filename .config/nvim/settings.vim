set clipboard=unnamedplus " use main clipboard
set number relativenumber " show relative number
set tabstop=4       " number of visual spaces per TAB
set shiftwidth=4    " number of space move for 1 shift
set expandtab       " tabs are spaces
set wrap linebreak  " make break line
set ignorecase smartcase " use smart case
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
let g:python3_host_prog="/home/dreamer/.pyenv/versions/nvim/bin/python" " set default python path
" set pyx=3 " set pythonx
" Remove delay time when switch to normal mode
set timeoutlen=1000 ttimeoutlen=0 " Default for timeoutlen is 1000
set history=1000
" Persistent undo
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
set mouse=a " enable mouse support
set hidden " allow open other buffer when current buffer is unsave
set confirm " add dialog to ask when quit
" Config for netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25
set nomodeline

" Easy expansion of the active file directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Faster scrolling
nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

" Disable auto indent when add commment //
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" check one time after 4s of inactivity in normal mode
" set autoread
" au CursorHold * checktime

" For css
autocmd FileType css,html,scss setlocal iskeyword+=-
autocmd FileType css,html,scss setlocal iskeyword+=.

" Folding
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Split right and bellow
set splitbelow
set splitright

" Auto group
augroup configgroup
    autocmd!
    autocmd BufRead,BufNewFile *.html,*.xml,*.ejs setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.dart setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.js,*jsx,*.json,*.ts,*.tsx setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.c,*.cpp,*.h setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.css,*.scss setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.cu setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.sh setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile Makefile setlocal noexpandtab
    autocmd BufRead,BufNewFile .gitconfig setlocal noexpandtab
    autocmd BufRead,BufNewFile *.go setlocal noexpandtab
    autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
    autocmd BufRead,BufNewFile *.gohtml set filetype=gohtmltmpl
    autocmd WinNew * highlight KeyWords guibg=yellow guifg=black | match KeyWords /FIXME:.*/
    " tsconfig.json is actually jsonc, help TypeScript set the correct filetype
    autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
    autocmd BufRead,BufNewFile *.py,*.md setlocal tw=80
    autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
    autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
    autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact


augroup END

augroup rungroup
    autocmd!
    autocmd BufRead,BufNewFile *.go nnoremap <F5> :exec '!go run' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.js nnoremap <F5> :exec '!node' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.py nnoremap <F5> :exec '!python' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.tex nnoremap <F5> :exec '!pdflatex' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.jl nnoremap <F5> :exec '!julia' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.lisp nnoremap <F5> :exec '!ros' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.vim nnoremap <F5> :source %<cr>

augroup END
" 
