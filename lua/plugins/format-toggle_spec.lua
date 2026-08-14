return {
  "DePaWSiT/format-toggle.nvim",
  lazy = true,
  event = { "BufRead", "BufNewFile" },
  dependencies = { "stevearc/conform.nvim", "nvim-lualine/lualine.nvim" },
  cmd = { "FormatToggle" },
  keys = function()
    local map = require("DePaWSiT.remap")
    return {
      {
        map.FORMAT_TOGGLE,
        function()
          vim.cmd("FormatToggle")
        end,
        mode = "n",
        desc = "Toggle formatter",
      },
    }
  end,
  -- dev = false,
  -- branch = "main",
  -- dir = "/mnt/SharedSpace/Code/nvim/format-toggle.nvim",
  opts = {
    prefix = "󰉼",
    toggle_cmd = "FormatToggle",
    lsp_format = "fallback",
  },
}
