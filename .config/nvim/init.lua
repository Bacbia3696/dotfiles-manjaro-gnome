--================================================"
--                      ██                        "
--                     ░░                         "
--             ██    ██ ██ ██████████             "
--            ░██   ░██░██░░██░░██░░██            "
--            ░░██ ░██ ░██ ░██ ░██ ░██            "
--             ░░████  ░██ ░██ ░██ ░██            "
--              ░░██   ░██ ███ ░██ ░██            "
--               ░░    ░░ ░░░  ░░  ░░             "
--                                                "
--                  Nguyen Thanh Dat, 29/09/2019  "
--================================================"
--       \                                  ___-------___
--        \                             _-~~             ~~-_
--         \                         _-~                    /~-_
--                /^\__/^\         /~  \                   /    \
--              /|  O|| O|        /      \_______________/        \
--             | |___||__|      /       /                \          \
--             |          \    /      /                    \          \
--             |   (_______) /______/                        \_________ \
--             |         / /         \                      /            \
--              \         \^\\         \                  /               \     /
--                \         ||           \______________/      _-_       //\__//
--                  \       ||------_-~~-_ ------------- \ --/~   ~\    || __/
--                    ~-----||====/~     |==================|       |/~~~~~
--                     (_(__/  ./     /                    \_\      \.
--                            (_(___/                         \_____)_)

-- Main config
require('plugins')

-- Main config
require('settings')
vim.cmd('source $HOME/.config/nvim/settings.vim')
require('keys')
vim.cmd('source $HOME/.config/nvim/keys.vim')
vim.cmd('source $HOME/.config/nvim/theme.vim')
vim.cmd('source $HOME/.config/nvim/functions.vim')

-- Plugins config
-- vim.cmd('source $HOME/.config/nvim/plugin-config/coc.nvim.vim')
-- vim.cmd('source $HOME/.config/nvim/plugin-config/vim-airline.vim')
--vim.cmd('source $HOME/.config/nvim/plugin-config/all-plugins.vim')
vim.cmd('luafile $HOME/.config/nvim/plugin-config/all-plugins.lua')

require('lsp.lua-ls')
