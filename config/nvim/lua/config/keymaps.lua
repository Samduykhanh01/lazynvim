-- Keymaps are automatically loaded on the VearyLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Telescopse stuff
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
  "<C-CR>",
  "<Esc><A-o>",
  { noremap = true, silent = true, desc = "Insert a new line below ad move to it" }
)

-- Insert a new line below and move to it
vim.keymap.set(
  "n",
  "<C-CR>",
  "<A-o>",
  { noremap = true, silent = true, desc = "Insert a new line below ad move to it" }
)

-- Map Ctrl + Backspace to move to the first non-blank character and then perform a backspace in Insert mode
vim.keymap.set(
  "i",
  "<C-BS>",
  "<Esc>^i<BS>",
  { noremap = true, silent = true, desc = "Move to the first non-blank character and backspace" }
)
vim.keymap.set(
  "n",
  "<C-BS>",
  "^i<BS>",
  { noremap = true, silent = true, desc = "Move to the first non-blank character and backspace" }
)

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Split window
vim.keymap.set("n", "ss", ":split<Return>", { noremap = true, silent = true, desc = "Split window horizontally" })
vim.keymap.set("n", "sv", ":vsplit<Return>", { noremap = true, silent = true, desc = "Split window vertically" })

-- New tab with control T
vim.keymap.set(
  "n",
  "<C-t>",
  ":tabedit<Return>",
  { noremap = true, silent = true, desc = "Open a new tab and switch to it via Ctrl + t" }
)

-- Terminal in neovim
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root(), direction = "horizontal" })
end
vim.keymap.set("n", "<leader>ft", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<leader>fT", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<c-/>", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })

-- Map <leader>w to visually select the current word
vim.keymap.set("n", "<A-w>", "viw", { noremap = true, silent = true, desc = "Select the current word" })

-- Indent the current line or selected lines in visual mode with Tab
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
-- Unindent the current line or selected lines in visual mode with Shift-Tab
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

-- Indent the current line in normal mode with Tab
vim.keymap.set("n", "<Tab>", ">>", { noremap = true, silent = true })
-- Unindent the current line in normal mode with Shift-Tab
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true, silent = true })
