local options = { noremap = true }

-- Split resizing mappings
vim.keymap.set('n', '=', ':vertical resize +5<CR>', options)
vim.keymap.set('n', '-', ':vertical resize -5<CR>', options)
vim.keymap.set('n', '+', ':horizontal resize +5<CR>', options)
vim.keymap.set('n', '_', ':horizontal resize -5<CR>', options)

-- Tab handling mappings
vim.keymap.set('n', '<leader>t', ':tabedit ', options)
vim.keymap.set('n', '<leader>n', ':tabn<CR> ', options)
vim.keymap.set('n', '<leader>m', ':tabp<CR> ', options)

-- Toggle spelling
local function toggle_spell_check()
  vim.o.spell = not vim.o.spell
  print('spell: ' .. tostring(vim.o.spell))
end
vim.keymap.set('n', '<leader>s', toggle_spell_check, options)

-- Open Lexplore
vim.keymap.set('n', '<leader>e', ':Lex<CR>', options);
