return {
  "stevearc/conform.nvim",
  enabled = true,
  event = "VeryLazy",
  dependencies = { "folke/snacks.nvim" },
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
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      scss = { "prettier" },
      md = { "prettier" },
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
    local format_util = require("DePaWSiT.format_util")

    vim.api.nvim_create_user_command("FormatToggle", function(toggle_opts)
      format_util.toggle_formatter(toggle_opts.args)
    end, { nargs = 1 })

    opts.format_on_save = function(bufnr)
      local formatters = require("conform").list_formatters_for_buffer(bufnr)
      formatters = vim.tbl_filter(function(formatter)
        return not format_util.is_disabled(formatter)
      end, formatters)
      return {
        formatters = formatters,
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
