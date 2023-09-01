require('mason-lspconfig').setup({
  ensure_installed = {
    'pylsp',
    'clangd',
    'lua_ls',
  },
})

local on_attach = function(ev)
  local opts = { buffer = ev.buf }

  -- Info
  vim.keymap.set('n', 'gd',  vim.lsp.buf.definition,    opts)
  vim.keymap.set('n', 'gD',  vim.lsp.buf.declaration,   opts)
  vim.keymap.set('n', 'gtd', vim.lsp.buf.type_definition, opts)
  vim.keymap.set('n', 'gr',  vim.lsp.buf.references,    opts)
  vim.keymap.set('n', 'gi',  vim.lsp.buf.implementation,  opts)
  vim.keymap.set('n', 'gk',  vim.lsp.buf.hover,       opts)

  -- Editing
  vim.keymap.set('n', 'gA',  vim.lsp.buf.code_action,   opts)
  vim.keymap.set('n', 'gF',  function() vim.lsp.buf.format { async = true } end, opts)

  -- TODO: enable renaming

  -- Diagnostics
  vim.keymap.set('n', 'gw',  vim.diagnostic.open_float,   opts)
  vim.keymap.set('n', 'g]',  vim.diagnostic.goto_next,  opts)
  vim.keymap.set('n', 'g[',  vim.diagnostic.goto_prev,  opts)

  local function toggle_diagnostics()
    if vim.diagnostic.is_disabled() then
      vim.diagnostic.enable()
    else
      vim.diagnostic.disable()
    end
  end
  vim.keymap.set('n', '<leader>tt', toggle_diagnostics, {noremap = true, silent = true})

end

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = on_attach,
})

local lsp = require('lspconfig')

lsp.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lsp.clangd.setup({})

require('clangd_extensions').setup({
  extensions = {
      autoSetHints = true,
      inlay_hints = {
          only_current_line = false,
          only_current_line_autocmd = 'CursorHold',
          show_parameter_hints = true,
          parameter_hints_prefix = '<- ',
          other_hints_prefix = '=> ',
          max_len_align = false,
          max_len_align_padding = 1,
          right_align = false,
          right_align_padding = 7,
          highlight = 'Comment',
          priority = 100,
      }
  }
})

lsp.pylsp.setup({})
