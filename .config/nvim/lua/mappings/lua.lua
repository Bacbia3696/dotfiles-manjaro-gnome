vim.cmd [[ packadd vimpeccable ]]
vimp = require('vimp')

vim.g.mapleader = " "
 
-- Emacs like behavior
vimp.inoremap("<C-a>", "<Home>")
vimp.inoremap("<C-e>", "<End>")
vimp.inoremap("<C-f>", "<Right>")
vimp.inoremap("<C-b>", "<Left>")
vimp.inoremap("<C-p>", "<Up>")
vimp.inoremap("<C-n>", "<Down>")
vimp.inoremap("<M-BS>", "<C-w>")
vimp.inoremap("<M-f>", "<C-Right>")
vimp.inoremap("<M-b>", "<C-Left>")
vimp.inoremap("<M-d>", "<ESC>lcw")
vimp.inoremap("<C-d>", "<Del>")
vimp.inoremap("<C-k>", "<C-o>D")

vimp.nnoremap("<C-x>h", "ggVG")

vimp.nnoremap("<leader><leader>", "<Cmd>nohl<CR>")
vimp.nnoremap("<leader>q", "<Cmd>confirm qa<CR>")
vimp.nnoremap("<leader>p", "`[v`]")

vimp.nnoremap("<M-t>", "<Cmd>tabnew<CR>")
-- Fixme: convert this to lua latter
vim.cmd [[
for i in range(0,9) | execute 'noremap <silent> <M-'.i.'> :'.i."wincmd w<cr>" | endfor
for i in range(0,9) | execute 'inoremap <silent> <M-'.i.'> <ESC>:'.i."wincmd w<cr>" | endfor
for i in range(0,9) | execute 'tnoremap <silent> <M-'.i.'> <C-\><C-n>:'.i."wincmd w<cr>" | endfor
]]
vimp.nnoremap("<M-j>", "gT")
vimp.nnoremap("<M-k>", "gt")
vimp.inoremap("<M-j>", "<ESC>gT")
vimp.inoremap("<M-k>", "<ESC>gt")

vimp.nnoremap("<C-q>", "<Cmd>confirm q<CR>")
vimp.inoremap("<C-q>", "<Cmd>confirm q<CR>")

vimp.nnoremap("<leader>o", "<Cmd>!xdg-open %<CR>")
vimp.nnoremap("<leader>O", "<Cmd>!xdg-open $(dirname %)<CR>")

-- Easy expansion of the active file directory
vim.cmd [[ cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%' ]]
-- Faster scrolling
vimp.nnoremap({'override'}, "<C-y>", "3<C-y>")
vimp.nnoremap({'override'}, "<C-e>", "3<C-e>")

vimp.nnoremap("<C-s>", "<Cmd>Neoformat<CR><Cmd>write<CR>")
vimp.inoremap("<C-s>", "<ESC><Cmd>Neoformat<CR><Cmd>write<CR>")

vim.api.nvim_command([[
" Disable auto indent when add commment //
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" For css
autocmd FileType css,html,scss setlocal iskeyword+=-
autocmd FileType css,html,scss setlocal iskeyword+=.

" Highlight comment json
autocmd FileType json syntax match Comment +\/\/.\+$+

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
    autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
    autocmd BufRead,BufNewFile *.py,*.md setlocal tw=80
    autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
    autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
    "autocmd BufWritePre *.go :OR
    autocmd BufRead,BufNewFile *.go setlocal noexpandtab
    autocmd BufRead,BufNewFile *.gohtml,*.tmpl set filetype=gohtmltmpl
augroup END

augroup rungroup
    autocmd!
    autocmd BufRead,BufNewFile *.go nnoremap <F5> :exec '!go run' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.js nnoremap <F5> :exec '!node' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.py nnoremap <F5> :exec '!python' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.tex nnoremap <F5> :exec '!pdflatex' shellescape(@%, 1)<cr>
    autocmd BufRead,BufNewFile *.sql nnoremap <F5> :!psql -Ugpp_dev -dgpp_db -p5431 -h127.0.0.1 -f %<cr>
    autocmd BufRead,BufNewFile *.vim nnoremap <F5> :source %<cr>
augroup END
]])
