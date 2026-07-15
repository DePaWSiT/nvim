return {
  "DePaWSiT/format-toggle.nvim",
  lazy = true,
  event = { "BufRead", "BufNewFile" },
  dependencies = { "stevearc/conform.nvim", "nvim-lualine/lualine.nvim" },
  cmd = { "FormatToggle" },
  dev = true,
  dir = "/mnt/SharedSpace/Code/nvim/format-toggle.nvim",
  opts = {
    prefix = "󰉼",
    toggle_cmd = "FormatToggle",
  },
}
