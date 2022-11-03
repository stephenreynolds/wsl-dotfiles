" Set leader to space
noremap <SPACE> <Nop>
let mapleader = " "

" Indents
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Numbers
set guicursor=
set number
set relativenumber
set mouse=

" Misc settings
set exrc
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set ignorecase
set smartcase
set noshowmode
set completeopt=menuone,noselect

" Disable swapfile and stuff
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

set incsearch
set termguicolors
set scrolloff=8

" Columns
set colorcolumn=80,120
set signcolumn=yes

" Remaps
map <leader>a ggVG
map <leader>ut :UndotreeToggle<CR>
nnoremap <leader>l <cmd>call setqflist([])<CR>
nnoremap <silent> <leader>gg :LazyGit<CR>
nnoremap <leader>z <cmd>TZAtaraxis<CR>

" Plugins
call plug#begin('~/.vim/plugged')
    " Themes
    Plug 'rebelot/kanagawa.nvim'

    " Features
    Plug 'mbbill/undotree'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'ray-x/lsp_signature.nvim'
    Plug 'onsails/lspkind-nvim'

    " Snippets
    Plug 'L3MON4D3/LuaSnip', {'tag': 'v<CurrentMajor>.*'}

    " Status line
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdan142/nvim-web-devicons'

    " Telescope
    Plug 'nvim-telescope/telescope-project.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-tree/nvim-web-devicons'

    " Syntax highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-context'

    " Zen mode
    Plug 'Pocco81/true-zen.nvim'

    " Git
    Plug 'kdheepak/lazygit.nvim'
    Plug 'tpope/vim-fugitive'

    " LSP autoinstall
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'williamboman/mason.nvim'

    " Completion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-nvim-lua'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'saadparwaiz1/cmp_luasnip'
call plug#end()

" Plugin configs
lua require("stephen")

" Color scheme
colorscheme kanagawa
highlight Normal guibg=none

