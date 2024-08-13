--[[
return {
  "mfussenegger/nvim-jdtls",
  dependencies = { "folke/which-key.nvim" },
  opts = function()
    local config = {
      setting = {
        java = {
          project = {
            sourcePaths = { "java/src", "src", "java" },
          },
        },
      },
    }
    require("jdtls").start_or_attach(config)
  end,
}
--]]

return {
  "mfussenegger/nvim-jdtls",
  dependencies = { "folke/which-key.nvim" },
  opts = function()
    local home = os.getenv("HOME")

    -- Define the command to start JDTLS with required options
    local config = {
      cmd = {
        home .. "/.local/share/nvim/mason/bin/jdtls", -- Path to JDTLS executable
        "-data",
        home .. "/.cache/jdtls/workspace/", -- Workspace directory for JDTLS
      },

      -- Use nvim-lspconfig utilities to determine the project root
      root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),

      -- Project-specific settings
      settings = {
        java = {
          project = {
            sourcePaths = { "java/src", "src", "java" }, -- Add your source paths here
          },
          -- Additional Java settings can be added here
        },
      },

      -- Additional capabilities for JDTLS
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    }

    -- Start or attach the JDTLS server
    require("jdtls").start_or_attach(config)
  end,
}
