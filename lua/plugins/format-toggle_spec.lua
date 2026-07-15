return {
  "DePaWSiT/format-toggle.nvim",
  lazy = true,
  event = { "BufRead", "BufNewFile" },
  dependencies = { "stevearc/conform.nvim", "nvim-lualine/lualine.nvim" },
  cmd = { "FormatToggle" },
  -- dev = false,
  -- branch = "main",
  -- dir = "/mnt/SharedSpace/Code/nvim/format-toggle.nvim",
  opts = {
    prefix = "󰉼",
    toggle_cmd = "FormatToggle",
    lsp_format = "fallback",
  },
}
