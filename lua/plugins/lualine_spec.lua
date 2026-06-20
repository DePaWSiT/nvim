return {
  "nvim-lualine/lualine.nvim",
  event = { "BufRead", "BufNewFile" },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "ray-x/lsp_signature.nvim",
  },
  opts = function(_, opts)
    local format_util = require("DePaWSiT.format_util")
    opts.options = {
      theme = "auto",
    }
    opts.sections = {
      lualine_c = {
        "filename",
        {
          function()
            return require("lsp_signature").status_line(vim.o.columns).label
          end,
          cond = function()
            local label = require("lsp_signature").status_line(vim.o.columns).label
            return label ~= nil and label ~= ""
          end,
        },
      },
      lualine_x = { "lsp_status", format_util.conform_formatters, "filetype" },
    }
  end,
}
