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
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  {
    'nmac427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup()
    end,
  },
}
