call plug#begin('~/.config/nvim/plugged')

" NERDTree
Plug 'preservim/nerdtree'

" Status line (lualine)
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" Color Schemes
Plug 'folke/tokyonight.nvim'
Plug 'ellisonleao/gruvbox.nvim'

" Haskell support
Plug 'mrcjkb/haskell-tools.nvim'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'sbdchd/neoformat'

call plug#end()

lua << EOF

require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").pyright.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").clangd.setup {}

require('lualine').setup()

vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
EOF

colorscheme gruvbox

set relativenumber

:inoremap { {}<Esc>ha
:inoremap ( ()<Esc>ha
:inoremap [ []<Esc>ha
:inoremap " ""<Esc>ha
:inoremap ' ''<Esc>ha
:inoremap ` ``<Esc>ha
