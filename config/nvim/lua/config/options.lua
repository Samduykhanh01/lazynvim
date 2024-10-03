-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Leader is space
vim.g.mapleader = " "

-- Relative line number
vim.opt.number = true
-- vim.opt.relativenumber = false

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

-- Show commands
vim.opt.showcmd = true

-- Ignore case when searching (NO case-sensitive)
vim.opt.ignorecase = true

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

-- Enable mouse
vim.opt.mouse = "a"
-- Keep cursor where it is even when I scroll off the screen
-- vim.opt.scrolloff = 999

-- Set the textwidth
-- vim.opt_local.textwidth = 100 -- Adjust this value as needed
-- vim.opt.wrap = false
-- vim.opt.linebreak = true
-- vim.opt.formatoptions = "tcqr"
