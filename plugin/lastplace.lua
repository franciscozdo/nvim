local lastplace_options = {
  lastplace_ignore_buftype = {
    'quickfix',
    'nofile',
    'help'
  },
  lastplace_ignore_filetype = {
    'gitcommit',
    'gitrebase'
  },
  lastplace_open_folds = true
}

require('nvim-lastplace').setup(lastplace_options)
