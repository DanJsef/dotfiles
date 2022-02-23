vim.g.mapleader = ' '
local fn = vim.fn
local execute = vim.api.nvim_command

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

require('settings')
require('plugins')
require('colorscheme')
require('plugins/telescope')
require('plugins/lualine')
require('plugins/lsp-config')
require('plugins/nvim-cmp')
require('plugins/tree-sitter')
require('plugins/floaterm')
require('plugins/nvim-tree')
require('plugins/nerdcommenter')
require('plugins/dashboard-nvim')
require('plugins/nvim-autopairs')
require('plugins/neoformat')
require('plugins/lightspeed')
require('plugins/auto-session')
require('plugins/nvim-colorizer')
--require('plugins/spellsitter')
require('plugins/neoscroll')
--require('plugins/indent-blankline')
require('plugins/orgmode')

require('lspconfig/prolog_lsp')
require('lspconfig').prolog_lsp.setup{}
