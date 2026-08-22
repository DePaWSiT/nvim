return {
  "nvim-lualine/lualine.nvim",
  event = { "BufRead", "BufNewFile" },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "ray-x/lsp_signature.nvim",
  },
  opts = function(_, opts)
    local format_toggle = require("format-toggle")
    local c = require("themes.gfl416.lua.lush_theme.colors")
    opts.options = {
      theme = {
        normal = {
          a = { bg = c.purple },
          b = { bg = c.carbon_black },
          c = { bg = c.carbon_black },
        },
      },
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
      lualine_x = { "lsp_status", format_toggle.formatter_display, "filetype" },
    }
  end,
}
