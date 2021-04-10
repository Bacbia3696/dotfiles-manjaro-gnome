local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-commentary' -- Comment stuff out
    use 'tpope/vim-eunuch' -- Vim sugar for the UNIX shell commands
    use 'tpope/vim-surround' -- Surround stuffs
    use 'tpope/vim-unimpaired' -- Complementary pairs of mappings
    use 'tpope/vim-repeat' -- Repeat even not built-in commands
    use 'tpope/vim-fugitive' -- A Git wrapper so awesome, it should be illegal
    use 'tpope/vim-projectionist' -- Projectionist provides granular project configuration

    use 'jiangmiao/auto-pairs' -- Insert or delete brackets, parens, quotes in pair
    use {'neoclide/coc.nvim', branch= 'release'} -- Coc is an intellisense engine
    use 'sheerun/vim-polyglot' -- A collection of language packs for Vim.
    use 'ryanoasis/vim-devicons' -- Adds file type icons to Vim plugins
    use 'Yggdroot/indentLine' -- A vim plugin to display the indention levels with thin vertical lines
    use 'chrisbra/nrrwrgn' -- A Vim plugin for focussing on a selected region
    use 'Bacbia3696/vim-snippets' -- Contains snippets files for various programming languages
    use 'mbbill/undotree' -- The undo history visualizer for VIM
    use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install', cmd = 'MarkdownPreview'}
    -- use 'JuliaEditorSupport/julia-vim' -- Vim support for Julia
    use 'lervag/vimtex' -- A modern vim plugin for editing LaTeX files.
    use {'xuhdev/vim-latex-live-preview', ft = 'tex' } -- A Vim usein for Lively Previewing LaTeX PDF Output
    use 'voldikss/vim-floaterm' -- Use nvim/vim's builtin terminal in the floating/popup window
    use 'luochen1990/rainbow' -- Rainbow Parentheses Improved, shorter code, no level limit, smooth and fast, powerful configuration.
    use 'liuchengxu/vista.vim' -- Viewer & Finder for LSP symbols and tags 
    use 'ludovicchabant/vim-gutentags' -- A Vim plugin that manages your tag files
    use 'puremourning/vimspector' -- A multi language graphical debugger for Vim

    use 'Neevash/awesome-flutter-snippets'

    -- Themes
    -- use 'mhinz/vim-startify' -- The fancy start screen for Vim.
    use 'vim-airline/vim-airline' -- lean & mean status/tabline for vim that's light as air
    use 'vim-airline/vim-airline-themes' -- Themes for vim-airline

    use 'srcery-colors/srcery-vim' -- Theme for vim
    use 'tomasr/molokai' -- Molokai theme for vim
    use {'dracula/vim', as = 'dracula'}

    use 'neoclide/jsonc.vim'

    -- Html
    use 'Valloric/MatchTagAlways' -- A Vim plugin that always highlights the enclosing html/xml tags
    use 'alvan/vim-closetag' -- Auto close (X)HTML tags

    use 'KabbAmine/vCoolor.vim' -- Simple color selector/picker plugin for Vim

    use 'tweekmonster/django-plus.vim'

    use {'styled-components/vim-styled-components', branch='develop'}

    use 'leafgarland/typescript-vim'
    use 'peitalin/vim-jsx-typescript'
end)
