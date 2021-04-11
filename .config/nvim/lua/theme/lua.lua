-- "↵,→,~,↷,↶,·,¬,⇨,⋄,‸,⇥,➜,⟫,➪,➭

vim.o.termguicolors = true
vim.wo.cursorline = true

vim.g.srcery_italic=1
vim.g.srcery_transparent_background=1
vim.g.srcery_inverse_matches=1

local cmd = vim.cmd

vim.cmd "colorscheme srcery"

-- highlights --
vim.cmd "hi LineNr guifg=#42464e guibg=NONE"
vim.cmd "hi Comment guifg=#42464e"

vim.cmd "hi SignColumn guibg=NONE"
vim.cmd "hi VertSplit guibg=NONE guifg=#2a2e36"
vim.cmd "hi EndOfBuffer guifg=#1e222a"
vim.cmd "hi PmenuSel guibg=#98c379"
vim.cmd "hi Pmenu  guibg=#282c34"

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

-- inactive statuslines as thin splitlines
vim.cmd("highlight! StatusLineNC gui=underline guibg=NONE guifg=#383c44")

vim.cmd "hi clear CursorLine"
vim.cmd "hi cursorlinenr guibg=NONE guifg=#abb2bf"
