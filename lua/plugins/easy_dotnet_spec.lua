return {
  "GustavEikaas/easy-dotnet.nvim",
  lazy = true,
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
