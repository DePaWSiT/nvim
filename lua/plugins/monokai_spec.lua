return {
  {
    "loctvl842/monokai-pro.nvim",
    priority = 1000,
    enabled = false,
    opts = {},
  },
  {
    -- to clear cache for this plugin :MonokaiCache clear || :MonokaiCache compile
    "khoido2003/monokai-v2.nvim",
    priority = 1000,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      devicons = true,
      filter = "classic",
    },
  },
}
