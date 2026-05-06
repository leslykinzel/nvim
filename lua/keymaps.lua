-- keymaps

local defaults = {
  noremap = true,
  silent  = true,
}

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", defaults)
vim.keymap.set("n", "<C-j>", "<C-w>j", defaults)
vim.keymap.set("n", "<C-k>", "<C-w>k", defaults)
vim.keymap.set("n", "<C-l>", "<C-w>l", defaults)

-- Window resizing
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", defaults)
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", defaults)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", defaults)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", defaults)

-- Disable search highlights
-- The default is <C-l> but I used that for navigating between windows.
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", defaults)

-- Toggle line numbers
vim.keymap.set("n", "<C-n>", ":set number!<CR>", defaults)

-- Go to normal mode from terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", defaults)

-- Put cursor at start of line while scrolling
vim.keymap.set("n", "<C-e>", "<C-e>0", defaults)
vim.keymap.set("n", "<C-y>", "<C-y>0", defaults)

-- Move forward/back between open buffers
vim.keymap.set("n", "<C-b>", ":bprev<CR>", defaults)
vim.keymap.set("n", "<C-f>", ":bnext<CR>", defaults)
