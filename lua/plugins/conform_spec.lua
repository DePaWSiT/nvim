return {
  "stevearc/conform.nvim",
  enabled = true,
  event = { "BufWritePre" },
  dependencies = { "folke/snacks.nvim" },
  cmd = { "ConformInfo" },
  keys = function()
    local remap = require("DePaWSiT.remap")
    return {
      {
        remap.FORMAT_FILE,
        function()
          local formatters = require("format-toggle").available_formatters().formatters
          require("conform").format({ formatters = formatters, async = true }, function(err, did_edit)
            if not did_edit then
              vim.notify("Failed to format: " .. err, 4)
            end
          end)
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
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      scss = { "prettier" },
      markdown = { "prettier" },
      lua = { "stylua" },
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
        args = { "--write", "--log-level", "silent", "--stdin-filepath", "$FILENAME" },
        stdin = true,
      },
    },
  },
  config = function(_, opts)
    opts.format_on_save = function(bufnr)
      local formatters = require("format-toggle").available_formatters(bufnr)
      return {
        formatters = formatters.formatters,
        lsp_format = "fallback",
        timeout = 1000,
      }
    end

    require("conform").setup(opts)
    vim.filetype.add({
      extension = {
        xaml = "xml",
      },
    })
  end,
}
