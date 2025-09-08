return {
  "windwp/nvim-ts-autotag",
  ft = { "html", "xml" },
  opts = {
    opts = {
      enable_close = true,
      enable_rename = true,
      enable_close_on_slash = false,
    },
    per_filetype = {},
    aliases = {
      ["xaml"] = "xml",
    },
  },
}
