local settings = {
  signs = {
    add = { text = '▎' },
    change = { text = '▎' },
    delete = { text = '' },
    topdelete = { text = '' },
    changedelete = { text = '▎' },
    untracked = { text = '▎' },
  },
  signcolumn = true,
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  sign_priority = 6,
  update_debounce = 100,
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  on_attach =function(bufnr)
    local gs = package.loaded.gitsigns
    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end
    map('n', '<C-k>', gs.prev_hunk)
    map('n', '<C-j>', gs.next_hunk)
    map('n', 'gp'   , gs.preview_hunk)

    map('n', 'gs', gs.stage_hunk)
    map('v', 'gs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('n', 'gu', gs.undo_stage_hunk)

    map('n', 'gR', gs.reset_hunk)
    map('v', 'gR', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)

    map('n', 'gb', function() gs.blame_line{full=true} end)
  end
}

require('gitsigns').setup(settings)
