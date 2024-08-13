--[[
return {
  "neovim/nvim-lspconfig", -- Ensure lspconfig is included
  config = function()
    require("lspconfig").jdtls.setup({
      config = {
        settings = {
          java = {
            project = {
              sourcePaths = { "src", "main/java", "src/test/java" }, -- List your source directories
            },
          },
        },
      },
    })
  end,
}
--]]

--[[
local ret = {
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.jdtls.setup({
      -- cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls" },
      root_dir = lspconfig.util.root_pattern(".git", "pom.xml", "build.gradle"),

      settings = {
        java = {
          project = {
            sourcePaths = { "src/main/java", "src/test/java", "src" },
            -- outputPath = "bin",
          },
        },
      },
    })
  end,
}

return ret
--]]
