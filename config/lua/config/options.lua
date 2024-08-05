-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Relative line number
vim.opt.relativenumber = false

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Set the number of spaces per tab
vim.opt.tabstop = 2

-- Set the number of spaces for each indentation level
vim.opt.shiftwidth = 2

-- Make sure that text is indented with the same number of spaces
vim.opt.softtabstop = 2

-- Show the file's path on the top rights of the buffer
vim.opt.winbar = "%=%m %f"
