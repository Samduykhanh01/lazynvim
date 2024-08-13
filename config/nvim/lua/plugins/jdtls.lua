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

--[[
        home .. "/.local/share/nvim/mason/bin/jdtls", -- Path to JDTLS executable
        "-data",
        home .. "/.cache/jdtls/workspace/", -- Workspace directory for JDTLS
        --]]

return {
  "mfussenegger/nvim-jdtls",
  dependencies = { "folke/which-key.nvim" },
  opts = function()
    local home = os.getenv("HOME")
    local mason_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
    local workspace_folder = home .. "/.cache/jdtls/workspace/"
    local root_dir = require("jdtls.setup").find_root({ "src", ".git" })

    local config = {
      -- Define the command to start JDTLS with required options
      cmd = {
        -- "/usr/lib/jvm/java-18-openjdk-amd64/",

        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=ALL",
        "-Xms1g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens",
        "java.base/java.util=ALL-UNNAMED",
        "--add-opens",
        "java.base/java.lang=ALL-UNNAMED",
        "-jar",
        mason_path .. "/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar",
        "-configuration",
        mason_path .. "/config_linux",
        "-data",
        workspace_folder,
      },

      -- Use nvim-lspconfig utilities to determine the project root
      root_dir = root_dir,

      -- Project-specific settings
      settings = {
        java = {
          project = {
            sourcePaths = { "java/src", "src", "java" }, -- Add your source paths here
          },
          -- Additional Java settings can be added here

          eclipse = {
            downloadSources = true,
          },
          maven = {
            downloadSources = true,
          },

          implementationsCodeLens = {
            enabled = true,
          },
          referencesCodeLens = {
            enabled = true,
          },

          references = {
            includeDecompiledSources = true,
          },
          format = {
            enabled = true,
          },
        },
      },

      -- Specify classpath manually
      classpaths = {
        vim.fn.glob(root_dir .. "/lib/*.jar", true, 1), -- Add all JARs in the lib directory
      },

      -- Specify source directories manually
      sourcepaths = {
        root_dir .. "/src",
      },

      -- Additional capabilities for JDTLS
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    }

    -- Start or attach the JDTLS server
    require("jdtls").start_or_attach(config)
  end,
}
