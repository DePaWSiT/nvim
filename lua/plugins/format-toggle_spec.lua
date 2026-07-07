return {
  "DePaWSiT/format-toggle.nvim",
  lazy = true,
  event = { "BufRead", "BufNewFile" },
  cmd = { "FormatToggle" },
  -- dev = true,
  -- dir = "~/Documents/format-toggle.nvim/",
  opts = {
    prefix = "󰉼",
  },
}
