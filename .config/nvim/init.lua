-- load all plugins
require "pluginsList.lua"

require 'settings.lua'
require 'mappings.lua'
require 'theme.lua'

require 'gitsigns.lua'
require "file-icons.lua"
require 'statusline.lua'
--require 'dashboard.lua'
require 'lspconfig.lua'
require 'compe.lua'
require 'treesitter.lua'
require 'telescope.lua'
require 'nvimTree.lua'
require('colorizer').setup()
require('nvim-autopairs').setup()
require('lspkind').init(
    {
        with_text = true,
        symbol_map = {
            Folder = ""
        }
    }
)
require('nvim_comment').setup()
