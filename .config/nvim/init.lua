-- load all plugins
require "pluginsList.lua"
require "file-icons.lua"
require 'settings.lua'
require 'theme.lua'
require "statusline.lua"
require("colorizer").setup()
-- lsp
require "lspconfig.lua"
require "compe.lua"
require("treesitter.lua")
require("mappings.lua")
-- telescope stuff and popupmenu
require "telescope.lua"
--  nvim tree color for folder name and icon
require "nvimTree.lua"
-- git signs
require "gitsigns.lua"
require("nvim-autopairs").setup()
require("lspkind").init(
    {
        with_text = true,
        symbol_map = {
            Folder = ""
        }
    }
)

require('nvim_comment').setup()
