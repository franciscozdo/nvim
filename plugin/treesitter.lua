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
}

require('nvim-treesitter.configs').setup(treesitter_options)
