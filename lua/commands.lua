vim.api.nvim_create_user_command(
  'Tabs',
  function(opts)
    local arg = opts.fargs[1]
    local expand = string.match(arg, "(%d+)+")      -- will only match if number is followed by '+'
    local ts = tonumber(string.match(arg, "(%d+)")) -- will always match the number
    vim.o.expandtab = expand ~= nil
    vim.o.tabstop = ts
    vim.o.shiftwidth = ts
  end,
  { nargs = 1 }
)
