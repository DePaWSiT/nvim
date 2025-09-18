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
      {
        remap.MARKDOWN_OPEN,
        function()
          vim.cmd("Markview enable")
        end,
      },
      {
        remap.MARKDOWN_CLOSE,
        function()
          vim.cmd("Markview disable")
        end,
      },
      {
        remap.MARKDOWN_RENDER,
        function()
          vim.cmd("Markview Render")
        end,
      },
      {
        remap.MARKDOWN_SPLIT_TOGGLE,
        function()
          vim.cmd("Markview splitToggle")
        end,
      },
      {
        remap.MARKDOWN_SPLIT_OPEN,
        function()
          vim.cmd("Markview splitOpen")
        end,
      },
      {
        remap.MARKDOWN_SPLIT_CLOSE,
        function()
          vim.cmd("Markview splitClose")
        end,
      },
      {
        remap.MARKDOWN_SPLIT_REDRAW,
        function()
          vim.cmd("Markview splitRedraw")
        end,
      },
    }
  end,
}
