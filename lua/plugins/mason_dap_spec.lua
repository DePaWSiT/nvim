return {
  "jay-babu/mason-nvim-dap.nvim",
  event = "VeryLazy",
  dependancies = {
    "mason-org/mason.nvim",
  },
  opts = {
    ensure_installed = {
      "coreclr",
      "javadbg",
      "javatest",
    },
  },
  config = function(_, opts)
    require("mason").setup()
    require("mason-nvim-dap").setup(opts)
  end,
}
