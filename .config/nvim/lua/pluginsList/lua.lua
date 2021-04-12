-- using { } when using a different branch of the plugin or loading the plugin with certain commands
return require("packer").startup(
    function()
    use {'wbthomason/packer.nvim'}

    use {'svermeulen/vimpeccable', opt = true}
    use 'nvim-lua/plenary.nvim'
    use 'tjdevries/nlua.nvim'

    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'

    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/nvim-compe'
    use 'nvim-treesitter/nvim-treesitter'
    use 'sbdchd/neoformat'
    use 'terrortylor/nvim-comment'
    use 'sheerun/vim-polyglot'

    use 'srcery-colors/srcery-vim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'glepnir/galaxyline.nvim'
    use 'norcalli/nvim-colorizer.lua'
    -- use 'glepnir/dashboard-nvim'
    use 'tweekmonster/startuptime.vim'
    use 'ryanoasis/vim-devicons'

    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'

    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'metakirby5/codi.vim'
    use 'lewis6991/gitsigns.nvim'
    use 'windwp/nvim-autopairs'
    use 'alvan/vim-closetag'
    use 'onsails/lspkind-nvim'
    use 'nvim-lua/popup.nvim'
    end
)
