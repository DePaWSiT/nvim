return {
  "barrettruth/live-server.nvim",
  lazy = true,
  cmd = { "LiveServerStart", "LiveServerStop", "LiveServerToggle" },
  init = function(_)
    vim.g.live_server = {
      port = 8080,
      browser = true,
    }
  end,
}
