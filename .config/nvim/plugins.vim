let g:polyglot_disabled = ['typescript', 'typescriptreact']

call plug#begin('~/.vim/plugged')
Plug 'leafgarland/typescript-vim'

Plug 'tpope/vim-commentary' " Comment stuff out
Plug 'tpope/vim-eunuch' " Vim sugar for the UNIX shell commands
Plug 'tpope/vim-surround' " Surround stuffs
Plug 'tpope/vim-unimpaired' " Complementary pairs of mappings
Plug 'tpope/vim-repeat' " Repeat even not built-in commands
Plug 'tpope/vim-fugitive' " A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-projectionist' " Projectionist provides granular project configuration
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc is an intellisense engine
" Plug 'sheerun/vim-polyglot' " A collection of language packs for Vim.
Plug 'ryanoasis/vim-devicons' " Adds file type icons to Vim plugins
Plug 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines
Plug 'chrisbra/nrrwrgn' " A Vim plugin for focussing on a selected region
Plug 'Bacbia3696/vim-snippets' " Contains snippets files for various programming languages
Plug 'mbbill/undotree' " The undo history visualizer for VIM
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'JuliaEditorSupport/julia-vim' " Vim support for Julia
Plug 'lervag/vimtex' " A modern vim plugin for editing LaTeX files.
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } " A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'voldikss/vim-floaterm' " Use nvim/vim's builtin terminal in the floating/popup window
Plug 'luochen1990/rainbow' " Rainbow Parentheses Improved, shorter code, no level limit, smooth and fast, powerful configuration.
" Plug 'junegunn/vim-easy-align' " A simple alignment operator for Vim text editor
Plug 'liuchengxu/vista.vim' " Viewer & Finder for LSP symbols and tags 
Plug 'ludovicchabant/vim-gutentags' " A Vim plugin that manages your tag files
Plug 'puremourning/vimspector' " A multi language graphical debugger for Vim

" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
Plug 'Neevash/awesome-flutter-snippets'

" Themes
" Plug 'mhinz/vim-startify' " The fancy start screen for Vim.
Plug 'vim-airline/vim-airline' " lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes' " Themes for vim-airline

Plug 'wadackel/vim-dogrun' " Theme
Plug 'srcery-colors/srcery-vim' " Theme for vim
Plug 'tomasr/molokai' " Molokai theme for vim
Plug 'mhartington/oceanic-next' " Oceanic-Next.vim is a neovim them
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme'

" Plug 'liuchengxu/graphviz.vim' " A Vim graphviz plugin
" Plug 'dylon/vim-antlr' " Syntax highlighter for ANTLR files in vim
" Plug 'terryma/vim-multiple-cursors'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/jsonc.vim'

" " Html
Plug 'Valloric/MatchTagAlways' " A Vim plugin that always highlights the enclosing html/xml tags
Plug 'alvan/vim-closetag' " Auto close (X)HTML tags

Plug 'KabbAmine/vCoolor.vim' " Simple color selector/picker plugin for Vim

Plug 'tweekmonster/django-plus.vim'

Plug 'styled-components/vim-styled-components'


" Typescript
" Plug 'pangloss/vim-javascript'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'jparise/vim-graphql'
" Plug 'maxmellon/vim-jsx-pretty'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()
