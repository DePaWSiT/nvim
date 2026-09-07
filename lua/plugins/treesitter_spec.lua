return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  enabled = true,
  event = { "BufNewFile", "BufReadPre" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      -- A
      -- B
      -- C
      "c",
      "c_sharp",
      "css",
      -- D
      -- E
      -- F
      -- G
      -- H
      "html",
      -- I
      -- J
      "java",
      "javadoc",
      -- K
      -- L
      "lua",
      -- M
      "markdown",
      "markdown_inline",
      -- N
      -- O
      -- P
      "python",
      -- Q
      "query",
      -- R
      "regex",
      "rust",
      -- S
      -- T
      "toml",
      -- U
      -- V
      "vim",
      "vimdoc",
      -- W
      -- X
      -- Y
      "yaml",
      -- Z
    })
  end,
}
