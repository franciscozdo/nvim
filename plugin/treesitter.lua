local treesitter_options = {
  ensure_installed = {
    'c',
    'cpp',
    'lua',
    'vim',
    'query',
    'python',
    'latex',
    'bash',
    'make',
    'diff',
    'markdown',
    'comment',
  },
  sync_install = true,
  highlight = { enable = true },
  move = {
    enable = true,
    set_jumps = true, -- whether to set jumps in the jumplist
    goto_next_start = {
      ["]m"] = "@function.outer",
      ["]]"] = "@class.outer",
    },
    goto_previous_start = {
      ["[m"] = "@function.outer",
      ["[["] = "@class.outer",
    },
    goto_next_end = {
      ["]M"] = "@function.outer",
      ["]["] = "@class.outer",
    },
    goto_previous_end = {
      ["[M"] = "@function.outer",
      ["[]"] = "@class.outer",
    }
  }
}

require('nvim-treesitter.configs').setup(treesitter_options)
