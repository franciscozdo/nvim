local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

augroup('spelling', { clear = true })
autocmd('Filetype', {
  group = 'spelling',
  pattern = { 'text', 'gitcommit', 'markdown', 'tex', 'latex', 'plaintex' },
  command = 'setlocal spell'
})
