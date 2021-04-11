local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
    ensure_installed = {
        "javascript",
        "html",
        "css",
        "bash",
        "cpp",
        "rust",
        "lua"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}

vim.cmd "hi NvimTreeFolderIcon guifg = #61afef"
vim.cmd "hi NvimTreeFolderName guifg = #61afef"
vim.cmd "hi NvimTreeIndentMarker guifg=#383c44"
