return {
  "mason-org/mason.nvim",
  build = ":MasonUpdate",
  event = "VeryLazy",
  version = ">=2.0.0",
  opts = {
    registries = {
      "github:mason-org/mason-registry",
      "github:Crashdummyy/mason-registry",
    },
  },
}
