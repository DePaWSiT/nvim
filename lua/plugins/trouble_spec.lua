return {
  "folke/trouble.nvim",
  opts = {
    modes = {
      symbols = {
        win = {
          type = "split",
          relative = "editor",
          size = 0.33,
          position = "right",
        },
      },
      diagnostic_float = {
        mode = "diagnostics",
        preview = {
          type = "float",
          relative = "editor",
          border = "rounded",
          title = "Preview",
          title_pos = "center",
          position = { 0, -2 },
          size = { width = 0.3, height = 0.3 },
          zindex = 200,
        },
      },
      diagnostic_float_buffer = {
        mode = "diagnostics",
        filter = {
          buf = 0,
        },
        preview = {
          type = "float",
          relative = "editor",
          border = "rounded",
          title = "Preview",
          title_pos = "center",
          position = { 0, -2 },
          size = { width = 0.3, height = 0.3 },
          zindex = 200,
        },
      },
    },
  },
  lazy = false,
  cmd = { "Trouble" },
  keys = function()
    local map = require("DePaWSiT.remap")
    return {
      {
        map.TROUBLE_DIAGNOSTIC_TOGGLE,
        function()
          require("trouble").toggle("diagnostic_float")
        end,
        desc = "Diagnostics (Trouble)",
      },
      {
        map.TROUBLE_DIAGNOSTIC_CURRENT_BUFFER,
        function()
          require("trouble").toggle("diagnostic_float_buffer")
        end,
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        map.TROUBLE_SYMBOLS_TOGGLE,
        function()
          require("trouble").toggle("symbols")
        end,
        desc = "Symbols (Trouble)",
      },
    }
  end,
}
