return {
  "sainnhe/gruvbox-material",
  priority = 1000,
  config = function()
    -- More info about config: -> :help gruvbox-material
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
    vim.g.gruvbox_material_foreground = "original" -- original, mix, material
    vim.g.gruvbox_material_transparent_background = 0
    vim.g.gruvbox_material_sign_column_background = "grey"
    vim.g.gruvbox_material_float_style = "blend"
    vim.g.gruvbox_material_diagnostic_text_highlight = 1
    vim.g.gruvbox_material_diagnostic_virtual_text = "colored" -- grey, colored, highlighted
    vim.g.gruvbox_material_inlay_hints_background = "dimmed" -- none, dimmed

    -- finally set the colorscheme
    vim.cmd.colorscheme("gruvbox-material")
  end
}
