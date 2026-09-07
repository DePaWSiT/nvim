return {
  "GustavEikaas/easy-dotnet.nvim",
  lazy = true,
  enabled = function()
    local lang = require("DePaWSiT.language")
    return lang.csharp
  end,
  ft = { "cs", "sln", "slnx", "csproj", "props", "csx", "targets" },
  cmd = "Dotnet",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    projx_lsp = {
      enabled = false,
    },
    lsp = {
      enabled = false,
      roslynator_enabled = false,
    },
  },
  dev = false,
}
