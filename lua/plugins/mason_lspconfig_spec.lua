return {
  "mason-org/mason-lspconfig.nvim",
  event = { "BufNewFile", "BufReadPre" },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = {
      "lua_ls",
      "bashls",
      "zuban",
      "html",
      "cssls",
      "ts_ls",
      "omnisharp",
      "jdtls",
      "lemminx",
    },
    automatic_enable = {
      exclude = { "jdtls" },
    }, --config is done in lsp_config_spec.lua
  },
  config = function(_, opts)
    require("mason-lspconfig").setup(opts)
  end,
}
