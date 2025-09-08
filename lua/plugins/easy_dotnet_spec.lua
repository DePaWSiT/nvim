return {
  "GustavEikaas/easy-dotnet.nvim",
  ft = { "cs", "sln", "slnx", "csproj", "props", "csx", "targets" },
  cmd = "Dotnet",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
  opts = {},
  dev = false,
}
