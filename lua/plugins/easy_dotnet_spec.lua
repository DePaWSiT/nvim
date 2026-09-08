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
      enabled = true,
    },
    lsp = {
      enabled = true,
      roslynator_enabled = true,
      suggest_updates = false,
    },
  },
  dev = false,
}
