return {
  {
    -- to clear cache for this plugin :MonokaiCache clear || :MonokaiCache compile
    "khoido2003/monokai-v2.nvim",
    priority = 1000,
    enabled = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      devicons = true,
      filter = "classic",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {},
    enabled = false,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    enabled = false,
    priority = 1000,
    opts = {
      style = "night",
    },
  },
}
