""================================================"
""              ██                                "
""             ░░                                 "
""     ██    ██ ██ ██████████  ██████  █████      "
""    ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██     "
""    ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░      "
""     ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██     "
""      ░░██   ░██ ███ ░██ ░██░███   ░░█████      "
""       ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░       "
""                                                "
""                  Nguyen Thanh Dat, 29/09/2019  "
""================================================"
""       \                                  ___-------___
""        \                             _-~~             ~~-_
""         \                         _-~                    /~-_
""                /^\__/^\         /~  \                   /    \
""              /|  O|| O|        /      \_______________/        \
""             | |___||__|      /       /                \          \
""             |          \    /      /                    \          \
""             |   (_______) /______/                        \_________ \
""             |         / /         \                      /            \
""              \         \^\\         \                  /               \     /
""                \         ||           \______________/      _-_       //\__//
""                  \       ||------_-~~-_ ------------- \ --/~   ~\    || __/
""                    ~-----||====/~     |==================|       |/~~~~~
""                     (_(__/  ./     /                    \_\      \.
""                            (_(___/                         \_____)_)


" Main config
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/functions.vim

" Plugins config
source $HOME/.config/nvim/plugin-config/coc.nvim.vim
source $HOME/.config/nvim/plugin-config/auto-pairs.vim
source $HOME/.config/nvim/plugin-config/undotree.vim
source $HOME/.config/nvim/plugin-config/vim-latex-live-preview.vim
source $HOME/.config/nvim/plugin-config/vim-airline.vim
source $HOME/.config/nvim/plugin-config/vim-rainbow.vim
source $HOME/.config/nvim/plugin-config/vim-closetag.vim

nnoremap <leader>% :MtaJumpToOtherTag<cr>

" css
nnoremap <leader>p Y}pA<BS>{<cr>}<esc>k$i

autocmd BufRead,BufNewFile *.styles.jsx setlocal ft=javascriptcss | setlocal syntax=javascriptreact

