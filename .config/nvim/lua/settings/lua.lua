vim.o.clipboard = 'unnamed,unnamedplus'
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.hidden = true
vim.o.mouse = 'ar'
vim.o.confirm = true
vim.o.foldlevelstart = 10
vim.wo.foldnestmax = 10
vim.wo.foldmethod = 'indent'
-- vim.wo.foldnestmax = 5
-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

-- persist undo
os.execute '[ ! -d "/tmp/.vim-undo-dir" ] && mkdir /tmp/.vim-undo-dir'
vim.o.undodir = '/tmp/.vim-undo-dir'
vim.o.undofile = true
vim.bo.undofile = true

vim.api.nvim_exec([[
" Highlight yank
au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
" Disable auto indent when add commment //
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Return to last edit position when opening files
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" For css
autocmd FileType css,html,scss setlocal iskeyword+=-
autocmd FileType css,html,scss setlocal iskeyword+=.
augroup ConfigGroup
    autocmd BufRead,BufNewFile *.html,*.xml,*.ejs setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.dart setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.js,*jsx,*.json,*.ts,*.tsx setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.c,*.cpp,*.h setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.css,*.scss setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.cu setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile *.sh setlocal ts=2 sw=2
    autocmd BufRead,BufNewFile Makefile setlocal noexpandtab
    autocmd BufRead,BufNewFile .gitconfig setlocal noexpandtab
    autocmd BufRead,BufNewFile *.gohtml,*.tmpl set filetype=gohtmltmpl
augroup END
augroup RunGroup
    autocmd BufRead,BufNewFile *.go nnoremap <F5> :exec '!go run' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.py nnoremap <F5> :exec '!python' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.js nnoremap <F5> :exec '!node' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.tex nnoremap <F5> :exec '!pdflatex' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.vim nnoremap <F5> :source %<cr>
    autocmd BufRead,BufNewFile *.lua nnoremap <F5> :luafile %<cr>
    autocmd BufRead,BufNewFile *.sql nnoremap <F5> :!psql -Ugpp_dev -dgpp_db -p5431 -h127.0.0.1 -f %<cr>
augroup END
]], false)
