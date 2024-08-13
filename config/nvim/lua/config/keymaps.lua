-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- Move line up
vim.keymap.set(
  "v",
  "<A-Up>",
  ":m '<-2<CR>gv=gv",
  { noremap = true, silent = true, desc = "Move line up in visual mode" }
)
vim.keymap.set(
  "n",
  "<A-Up>",
  "<Cmd>m .-2<CR>==",
  { noremap = true, silent = true, desc = "Move line up in normal mode" }
)

-- Move line down
vim.keymap.set(
  "v",
  "<A-Down>",
  ":m '>+1<CR>gv=gv",
  { noremap = true, silent = true, desc = "Move line down in visual mode" }
)
vim.keymap.set(
  "n",
  "<A-Down>",
  "<Cmd>m .+1<CR>==",
  { noremap = true, silent = true, desc = "Move line down in normal mode" }
)

-- Insert a new line below and move to it
vim.keymap.set(
  "i",
  "<S-CR>",
  '<Esc>:echo "Shift + Enter pressed in Insert mode"<CR>',
  { noremap = true, silent = true }
)

-- Map Ctrl + Backspace to move to the first non-blank character and then perform a backspace in Insert mode
vim.keymap.set("i", "<C-BS>", "<Esc>^i<BS>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-BS>", "^i<BS>", { noremap = true, silent = true })

-- Terminal in neovim
--[[
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root(), direction = "horizontal" })
end
vim.keymap.set("n", "<leader>ft", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<leader>fT", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<c-/>", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })
--]]
