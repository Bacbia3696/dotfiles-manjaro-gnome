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

-- persist undo
os.execute '[ ! -d "/tmp/.vim-undo-dir" ] && mkdir /tmp/.vim-undo-dir'
vim.o.undodir = '/tmp/.vim-undo-dir'
vim.o.undofile = true
vim.bo.undofile = true
