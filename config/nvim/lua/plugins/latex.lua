return {
  -- VimTeX plugin for LaTeX support
  {
    "lervag/vimtex",
    config = function()
      -- PDF viewer setup
      vim.g.vimtex_view_method = "general"
      vim.g.vimtex_view_general_viewer = "okular"
      vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"
      -- vim.g.vimtex_view_general_options = "--unique file:" .. vim.fn.expand("%:p:r") .. ".pdf\\#src:@line@tex"

      -- Use latexmk for LaTeX compilation (part of TeX Live)
      vim.g.vimtex_compiler_latexmk = {
        build_dir = "latex_build", -- Specify the build directory for temporary files
        continuous = 1, -- Enable continuous compilation mode
        executable = "latexmk",
        options = {
          "-pdf", -- Compile to PDF
          "-shell-escape", -- Enable shell escape if needed for specific LaTeX packages
          "-outdir=latex_build", -- Specify the output directory for generated files
        },
      }

      -- Key mappings for LaTeX files
      vim.api.nvim_set_keymap(
        "n",
        "<leader>cc",
        ":VimtexCompile<CR>",
        { noremap = true, silent = true, desc = "Compile the LaTeX file" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>cv",
        ":VimtexView<CR>",
        { noremap = true, silent = true, desc = "View the LaTeX PDF AFTER compiling it" }
      )
    end,
  },
  -- Snippets and autocompletion support for LaTeX
  {
    "rafamadriz/friendly-snippets",
  },
  {
    "hrsh7th/cmp-vsnip",
    requires = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/vim-vsnip",
    },
  },
}
