require('telescope').setup({
  extensions = {
    undo = {},
  },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- Settings for telescope-undo
require('telescope').load_extension('undo')
vim.keymap.set('n', '<leader>u', '<cmd>Telescope undo<cr>')
