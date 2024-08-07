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
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Move line down
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { noremap = true, silent = true })

-- Insert a new line below and move to it
--[[vim.keymap.set(
  "i",
  "<C-S-CR>",
  '<Esc>:echo "Ctrl + Shift + Enter pressed in Insert mode"<CR>',
  { noremap = true, silent = true }
)
--]]
