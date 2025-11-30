-- Set leader keys first
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Visual
vim.o.number = true
vim.o.cursorline = true
vim.o.showcmd = false
vim.o.colorcolumn = '100'
vim.o.list = true
vim.opt.listchars = {
  tab = '▸ ',
  trail = '·',
}

-- Spelling
vim.o.spelllang = 'en,pl'

-- Indentation
vim.o.tabstop = 2
vim.o.softtabstop = 0
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true

-- Search setting
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true -- If case is used in search then don't ignore it

-- Line breaking
vim.o.wrap = true
vim.o.linebreak = true
vim.o.showbreak = 'ͱ'

-- Splitting
vim.o.splitbelow = true
vim.o.splitright = true

-- Clipboard
vim.o.clipboard = 'unnamedplus'

-- Files, etc.
vim.o.exrc = true
vim.o.updatetime = 100
vim.o.undofile = true
vim.o.history = 50
vim.o.undodir = vim.env.HOME .. '/.nvim/undodir'
vim.o.swapfile = false
vim.o.backup = false

-- File explorer settings
vim.g.netrw_banner=0
vim.g.netrw_liststyle=3
vim.g.netrw_winsize=12
vim.g.netrw_keepdir=0

-- Other
vim.o.scrolloff = 8  -- scroll offwidth so it's not the very bottom
vim.o.mouse = 'a'  -- always enable mouse mode
