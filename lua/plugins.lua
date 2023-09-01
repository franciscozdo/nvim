return {
  'ellisonleao/gruvbox.nvim',

  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    }
  },

  'lewis6991/gitsigns.nvim',

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
}
