return {
  "OXY2DEV/markview.nvim",
  lazy = false,
  priority = 49,
  keys = function()
    local remap = require("DePaWSiT.remap")
    return {
      {
        remap.MARKDOWN_TOGGLE,
        function()
          vim.cmd("Markview")
        end,
      },
    }
  end,
}
