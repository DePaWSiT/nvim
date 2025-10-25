return {
  "jay-babu/mason-nvim-dap.nvim",
  event = { "BufRead", "BufNewFile" },
  dependancies = {
    "mason-org/mason.nvim",
    "mfussenegger/nvim-dap",
  },
  opts = {
    ensure_installed = {
      "coreclr",
    },
  },
  config = function(_, opts)
    require("mason").setup()
    require("mason-nvim-dap").setup(opts)
  end,
}
