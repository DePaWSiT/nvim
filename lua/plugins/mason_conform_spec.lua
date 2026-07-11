return {
  "zapling/mason-conform.nvim",
  event = { "BufNewFile", "BufReadPre" },
  dependencies = {
    "mason-org/mason.nvim",
    "stevearc/conform.nvim",
  },
}
