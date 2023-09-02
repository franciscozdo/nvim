require('mason-lspconfig').setup({
  ensure_installed = {
    'pylsp',
    'clangd',
    'lua_ls',
  },
})

local on_attach = function(ev)
  local function map(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = ev.bufnr
    vim.keymap.set(mode, l, r, opts)
  end

  -- Info
  map('n', 'gd',  vim.lsp.buf.definition, {desc = 'Go to definition'})
  map('n', 'gD',  vim.lsp.buf.declaration, {desc = 'Go to declaration'})
  map('n', 'gtd', vim.lsp.buf.type_definition, {desc = 'Go to type definition'})
  map('n', 'gr',  vim.lsp.buf.references, {desc = 'Show symbol references'})
  map('n', 'gi',  vim.lsp.buf.implementation, {desc = 'Go to implementation'})
  map('n', 'gk',  vim.lsp.buf.hover, {desc = 'Show symbol info'})

  -- Editing
  map('n', 'gA',  vim.lsp.buf.code_action, {desc = 'Show available actions'})
  map('n', 'gF',  function() vim.lsp.buf.format { async = true } end, {desc = 'Format buffer'})

  -- TODO: enable renaming

  -- Diagnostics
  map('n', 'gw',  vim.diagnostic.open_float,   {desc = 'Show diagnostics for current line'})
  map('n', 'g]',  vim.diagnostic.goto_next,  {desc = 'Go to next diagnostic'})
  map('n', 'g[',  vim.diagnostic.goto_prev,  {desc = 'Go to previous diagnostic'})

  local function toggle_diagnostics()
    if vim.diagnostic.is_disabled() then
      vim.diagnostic.enable()
    else
      vim.diagnostic.disable()
    end
  end
  map('n', '<leader>tt', toggle_diagnostics, {noremap = true, silent = true, desc = 'Toggle diagnostic messages'})

end

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = on_attach,
})

local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl })
end

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
