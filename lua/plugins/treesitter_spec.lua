return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  enabled = true,
  event = { "BufNewFile", "BufReadPre" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      "java",
      "javadoc",
      "c_sharp",
      "regex",
      "toml",
      "html",
      "css",
      "yaml",
    })
  end,
}
