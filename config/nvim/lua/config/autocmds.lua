-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

--[[
-- Require the jdtls module
local jdtls = require("plugins.jdtls")
-- Create an autocommand group
vim.api.nvim_create_augroup("JDTLSSetup", { clear = true })
-- Set up the autocommand to call setup_jdtls for Java files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    jdtls.setup_jdtls()
  end,
  group = "JDTLSSetup",
})
--]]

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    local jdtls = require("jdtls")
    local config = require("plugins.jdtls").opts()
    if config then
      jdtls.start_or_attach(config)
    else
      vim.notify("JDTLS configuration is missing", vim.log.levels.ERROR)
    end
  end,
})
