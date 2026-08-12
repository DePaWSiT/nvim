return {
  {
    "tpope/vim-dadbod",
    lazy = true,
    enabled = false,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    lazy = true,
    enabled = false,
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
}
