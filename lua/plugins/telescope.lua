return {
  {
    "nvim-telescope/telescope.nvim", tag = "v0.2.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      defaults = {
        borderchars = { "━", "┃", "━", "┃", "┏", "┓", "┛", "┗" },
      },
      mappings = {
        n = {
          ["q"] = require("telescope.actions").close,
        }
      }
    },
    config = function ()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      -- vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Telescope live grep" })
      -- vim.keymap.set("n", "<leader>h", builtin.help_tags, { desc = "Telescope help tags" })
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    opts = {},
    config = function ()
      local telescope = require("telescope")
      telescope.load_extension("file_browser")
      vim.keymap.set("n", "<leader>fb",
        function ()
          telescope.extensions.file_browser.file_browser({initial_mode = "normal"})
        end,
        { desc = "Telescope file browser" })
    end,
  },
}
