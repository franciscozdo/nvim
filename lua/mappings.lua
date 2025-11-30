local function map(mode, l, r, opts)
  opts = opts or {}
  opts.noremap = true
  vim.keymap.set(mode, l, r, opts)
end

-- Split resizing mappings
map("n", "=", ":vertical resize +5<CR>", {desc = "Vertical resize +"})
map("n", "-", ":vertical resize -5<CR>", {desc = "Vertical resize -"})
map("n", "+", ":horizontal resize +5<CR>", {desc = "Horizontal resize +"})
map("n", "_", ":horizontal resize -5<CR>", {desc = "Horizontal resize -"})

-- Tab handling mappings
map("n", "<leader>t", ":tabedit ", {desc = "Open new tab"})
map("n", "<leader>n", ":tabn<CR> ", {desc = "Go to next tab"})
map("n", "<leader>m", ":tabp<CR> ", {desc = "Go to prev tab"})

-- Toggle spelling
local function toggle_spell_check()
  vim.o.spell = not vim.o.spell
  -- No need for print if lualine is used with "spell" component
  -- print("spell: " .. tostring(vim.o.spell))
end
map("n", "<leader>s", toggle_spell_check, {desc = "Toggle spell checking"})
