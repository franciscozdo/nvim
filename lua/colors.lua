local gruvbox_settings = {
  undercurl = true,
  underline = true,
  bold = false,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = false, -- invert background for search, diffs, statuslines and errors
  contrast = 'hard', -- {'hard', 'soft', ''}
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
}
require('gruvbox').setup(gruvbox_settings)

vim.cmd.colorscheme('gruvbox')
