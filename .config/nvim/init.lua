--================================================"
--              ██                                "
--             ░░                                 "
--     ██    ██ ██ ██████████  ██████  █████      "
--    ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██     "
--    ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░      "
--     ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██     "
--      ░░██   ░██ ███ ░██ ░██░███   ░░█████      "
--       ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░       "
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

vim.cmd('source ./init-vim.vim')

-- Main config
vim.cmd('source $HOME/.config/nvim/plugins.vim')
vim.cmd('source $HOME/.config/nvim/settings.vim')
vim.cmd('source $HOME/.config/nvim/keys.vim')
vim.cmd('source $HOME/.config/nvim/theme.vim')
vim.cmd('source $HOME/.config/nvim/functions.vim')

-- Plugins config
vim.cmd('source $HOME/.config/nvim/plugin-config/coc.nvim.vim')
vim.cmd('source $HOME/.config/nvim/plugin-config/vim-airline.vim')
vim.cmd('source $HOME/.config/nvim/plugin-config/all-plugins.vim')
