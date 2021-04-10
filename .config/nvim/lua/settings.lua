local utils = require('utils')

local indent = 4

utils.opt('o', 'clipboard', 'unnamed,unnamedplus')
utils.opt('o', 'hidden', true)
utils.opt('o', 'mouse', 'ar')
utils.opt('o', 'confirm', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'foldlevelstart', 10)
utils.opt('o', 'foldnestmax', 10)
utils.opt('o', 'foldmethod', 'indent')
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)


utils.opt('w', 'relativenumber', true)
utils.opt('w', 'number', true)
utils.opt('w', 'wrap', true)
utils.opt('w', 'linebreak', true)

utils.opt('b', 'tabstop', indent)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'expandtab', true)
utils.opt('b', 'smartindent', true)
