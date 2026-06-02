return {
  "stevearc/conform.nvim",
  enabled = true,
  event = "VeryLazy",
  cmd = { "ConformInfo" },
  keys = function()
    local remap = require("DePaWSiT.remap")
    return {
      {
        remap.FORMAT_FILE,
        function()
          require("conform").format({ async = false })
          vim.cmd("write")
        end,
        mode = "n",
        desc = "Format buffer",
      },
    }
  end,
  opts = {
    log_level = vim.log.levels.DEBUG,
    formatters_by_ft = {
      cs = { "csharpier" },
      xml = { "xmlformatter" }, -- Works for both .xml and .xaml files
      html = { "prettier" },
      css = { "prettier" },
      jsx = { "prettier" },
      ts = { "prettier" },
      tsx = { "prettier" },
      json = { "prettier" },
      scss = { "prettier" },
      md = { "prettier" },
      lua = { "stylua" },
    },
    format_on_save = {
      timeout = 2000,
      lsp_format = "fallback",
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
    formatters = {
      csharpier = {
        command = "csharpier",
        args = { "format", "--stdin-path", "$FILENAME", "--write-stdout" },
        stdin = true,
      },
      xmlformatter = {
        command = "xmlformat",
        args = { "--blanks", "--indent", 2, "--indent-char", " ", "-" },
        stdin = true,
      },
      prettier = {
        command = "prettier",
        args = { "$FILENAME", "--write", "--log-level", "silent" },
        stdin = true,
      },
    },
  },
  config = function(_, opts)
    require("conform").setup(opts)
    vim.filetype.add({
      extension = {
        xaml = "xml",
      },
    })
  end,
}
