return {
  -- Other plugins
  {
    "mbbill/undotree",
    config = function()
      -- Key mapping to toggle undotree
      vim.api.nvim_set_keymap("n", "<leader>uu", ":UndotreeToggle<CR>", { noremap = true, silent = true })

      vim.opt.undofile = true
      vim.opt.undodir = vim.fn.expand("~/.config/nvim/undodir")

      local undodir = vim.fn.expand("~/.config/nvim/undodir")
      if not vim.fn.isdirectory(undodir) then
        vim.fn.mkdir(undodir, "p")
      end
      vim.g.undotree_WindowLayout = 2
      vim.g.undotree_ShortIndicators = 0
      vim.g.undotree_SetFocusWhenToggle = 1
    end,
  },
  -- Other plugins
}
