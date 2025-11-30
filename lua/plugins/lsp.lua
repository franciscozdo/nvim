local function config_lsp()
  vim.lsp.enable("rust_analyzer")
  vim.lsp.enable("clangd")
  vim.lsp.enable("zls")

  -- Show diagnostics inline
  vim.diagnostic.config({ virtual_text = true })

  local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview

  ---@diagnostic disable-next-line: duplicate-set-field
  function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = "bold" -- Or any other border
    opts.max_width = 90
    opts.max_height = 16
    return orig_util_open_floating_preview(contents, syntax, opts, ...)
  end

  -- LSP mappings
  vim.keymap.set("n", "gw", vim.diagnostic.open_float, {desc = "vim.diagnostic.buf.open_float"})
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc = "vim.lsp.buf.definition()"})

  -- existing ones:
  -- grr -> references
  -- grn -> rename
  -- gra -> code action
  -- gri -> implementation
  -- grt -> type definition

  local function toggle_inlay_hints()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  end
  vim.keymap.set("n", "<leader>i", toggle_inlay_hints, {desc = "Toggle LSP inlay hints"})
end

return {
  "neovim/nvim-lspconfig",
  config = config_lsp,
}
