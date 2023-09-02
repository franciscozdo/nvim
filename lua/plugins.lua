return {
  'ellisonleao/gruvbox.nvim',

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  'lewis6991/gitsigns.nvim',
  'ethanholz/nvim-lastplace',

  {
    'williamboman/mason.nvim',
    opts = {},
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
    opts = {},
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
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
    opts = {}
  },
}
