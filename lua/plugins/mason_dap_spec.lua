return {
  "jay-babu/mason-nvim-dap.nvim",
  event = { "BufNewFile", "BufReadPre" },
  dependancies = {
    "mason-org/mason.nvim",
    "mfussenegger/nvim-dap",
  },
  opts = {},
  config = function(_, opts)
    require("mason").setup()
    require("mason-nvim-dap").setup(opts)
  end,
}
