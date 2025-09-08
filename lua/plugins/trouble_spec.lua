return {
  "folke/trouble.nvim",
  cmd = { "Trouble" },
  opts = {
    modes = {
      test = {
        mode = "diagnostics",
        preview = {
          type = "split",
          relative = "win",
          position = "right",
          size = 0.4,
        },
      },
      lsp = {
        win = { position = "right" },
      },
    },
  },
  keys = function()
    local map = require("DePaWSiT.remap")
    return {
      { map.TROUBLE_DIAGNOSTIC_TOGGLE, "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
      {
        map.TROUBLE_DIAGNOSTIC_CURRENT_BUFFER,
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      { map.TROUBLE_SYMBOLS_TOGGLE, "<cmd>Trouble symbols toggle<cr>", desc = "Symbols (Trouble)" },
      { map.TROUBLE_LSP_TOGGLE, "<cmd>Trouble lsp toggle<cr>", desc = "LSP references/definitions/... (Trouble)" },
      { map.TROUBLE_LOCATION_LIST, "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
      { map.TROUBLE_QFLIST, "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
      {
        map.PREV_TROUBLE_ITEM,
        function()
          if require("trouble").is_open() then
            require("trouble").prev({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cprev)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Previous Trouble/Quickfix Item",
      },
      {
        map.NEXT_TROUBLE_ITEM,
        function()
          if require("trouble").is_open() then
            require("trouble").next({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cnext)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Next Trouble/Quickfix Item",
      },
    }
  end,
}
