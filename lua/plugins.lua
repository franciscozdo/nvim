return {
  'franciscozdo/gruvbox.nvim',

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  'lewis6991/gitsigns.nvim',
  'ethanholz/nvim-lastplace',
  'romainl/vim-cool',

  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    opts = {},
  },

  {
    'williamboman/mason.nvim',
    opts = {},
  },

  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'p00f/clangd_extensions.nvim',

  {
    'nvim-treesitter/nvim-treesitter',
    build = function ()
      require('nvim-treesitter.install').update({with_sync = true})
    end,
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
      'andersevenrud/cmp-tmux',
    },
  },

  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },

  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'debugloop/telescope-undo.nvim',
    },
  },

  'simrat39/rust-tools.nvim',
}
