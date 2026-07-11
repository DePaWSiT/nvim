return {
  "mason-org/mason.nvim",
  build = ":MasonUpdate",
  event = { "BufNewFile", "BufReadPre" },
  version = ">=2.0.0",
  opts = {
    registries = {
      "github:mason-org/mason-registry",
      "github:Crashdummyy/mason-registry",
    },
  },
}
