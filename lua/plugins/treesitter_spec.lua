return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  dependancies = {
    "OXY2DEV/markview.nvim",
  },
  --event = "VeryLazy",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    --List C compilers to use
    require("nvim-treesitter.install").compilers = { "gcc", "zig" }
    require("nvim-treesitter.configs").setup({
      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      ensure_installed = {
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
        "yaml",
      },
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = true,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = false,

      -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
      highlight = { enable = true },
      indent = {
        enabled = true,
        disable = { "cs" },
      },
    })
  end,
}
