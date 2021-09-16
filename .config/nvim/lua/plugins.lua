return require('packer').startup(function()

  use {'wbthomason/packer.nvim', opt = true}

  use 'arcticicestudio/nord-vim'

  --use 'shaunsingh/nord.nvim'

  --use { 'maaslalani/nordbuddy' }

  use 'glepnir/dashboard-nvim'

  use "kyazdani42/nvim-web-devicons"

--  use 'folke/lsp-colors.nvim'

  use {
    "kyazdani42/nvim-tree.lua",
    requires = "nvim-web-devicons"
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use 'voldikss/vim-floaterm'

  use 'lambdalisue/suda.vim'

  use 'neovim/nvim-lspconfig'

  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/vim-vsnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-calc",
      "ray-x/cmp-treesitter",
      "f3fora/cmp-spell",
      "kdheepak/cmp-latex-symbols",
      "quangnguyen30192/cmp-nvim-tags",
    }
  }

  use 'kabouzeid/nvim-lspinstall'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate"
  }

  use "ray-x/lsp_signature.nvim"

  use 'lewis6991/spellsitter.nvim'

  use 'RRethy/vim-illuminate'

  use 'norcalli/nvim-colorizer.lua'

  use 'onsails/lspkind-nvim'

  use 'sbdchd/neoformat'

  use 'preservim/nerdcommenter'

  use  'windwp/nvim-autopairs'

  --use 'psliwka/vim-smoothie'

  use 'karb94/neoscroll.nvim'

  use 'ggandor/lightspeed.nvim'

  use 'rmagatti/auto-session'

  use 'rmagatti/session-lens'

  use 'alvan/vim-closetag'

  use 'iamcco/markdown-preview.nvim'

  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0)
    end}

  end)
