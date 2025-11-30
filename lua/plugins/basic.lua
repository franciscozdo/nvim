return {
  { "romainl/vim-cool" }, -- Disable hlsearch when you are done searching.
  { "nmac427/guess-indent.nvim", opts = {}, },
  { "vladdoster/remember.nvim", opts = {}, }, -- Remember last place
  {
    "mrcjkb/rustaceanvim",
    enabled = false,
    version = "^6",
  },
  {
    "folke/which-key.nvim",
    opts = { layout = { width = { max = 40 }, } },
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim", -- Indent guides for Neovim
    main = "ibl",
    opts = {
      indent = { char = "▏" },
      scope = { enabled = false },
    },
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   build = function ()
  --     require("nvim-treesitter.install").update({with_sync = true})
  --   end,
  -- },
}
