vim.o.showmode = false

-- Info about used tabstop
local function tabs()
  local expand = (vim.o.expandtab and '+' or '')
  return string.format('ts=%d%s', vim.o.tabstop, expand)
end

local lualine_options = {
  options = {
    icons_enabled = true,
    theme = 'gruvbox-material',
    component_separators = { left = '│', right = '│'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode', 'selectioncount'},
    lualine_b = {
      {
        'filename',
        path = 1,             -- (0 - filename, 1 - relative, 2 - absolute, 3 - absolute w/ tilde)
        shorting_target = 50, -- shorten file path to leave 50 spaces for other components
        symbols = {
          modified = '+',
          readonly = '[ro]',
          unnamed = '[no name]',
          newfile = '[new]',
        }
      }
    },
    lualine_c = {'diagnostics'},
    lualine_x = {'encoding', 'filetype', tabs },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {'progress'},
    lualine_y = {},
    lualine_z = {'location'}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require('lualine').setup(lualine_options)
