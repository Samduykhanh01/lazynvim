--[[
return {
  "mfussenegger/nvim-jdtls",
  config = function()
    require("jdtls").start_or_attach({
      setting = {
        java = {
          project = {
            sourcePaths = { "src", "main/java", "src/test/java" }, -- List your source directories
          },
        },
      },
    })
  end,
}
--]]
