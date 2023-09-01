return {
  'ellisonleao/gruvbox.nvim',

  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    }
  },

  'lewis6991/gitsigns.nvim',
  'ethanholz/nvim-lastplace',

  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup({})
    end,
  },

  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'p00f/clangd_extensions.nvim',

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  {
    'nmac427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup()
    end,
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
}
