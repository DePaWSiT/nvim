return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  init = function()
    local map = require("DePaWSiT.remap")
    local wk = require("which-key")
    local harpoon_icon = { icon = "󱡅", color = "cyan", name = "harpoon_icon" }
    local markdown_icon = { icon = "󰽛", color = "yellow", name = "md_icon" }
    wk.add({
      { map.HARPOON_ADD_FILE, desc = "Add Harpoon", icon = harpoon_icon },
      { map.HARPOON_TOGGLE_MENU, desc = "Menu Harpoon", icon = harpoon_icon },
      { map.HARPOON_NAV_NEXT, desc = "Next Harpoon", icon = harpoon_icon },
      { map.HARPOON_NAV_PREV, desc = "Prev Harpoon", icon = harpoon_icon },
      { map.HARPOON_NAV_1, desc = "Harpoon 1", icon = harpoon_icon },
      { map.HARPOON_NAV_2, desc = "Harpoon 2", icon = harpoon_icon },
      { map.HARPOON_NAV_3, desc = "Harpoon 3", icon = harpoon_icon },
      { map.HARPOON_NAV_4, desc = "Harponn 4", icon = harpoon_icon },
      { map.SIGNATURE_TOGGLE_KEY, desc = "Toggle LSP Signature", icon = { icon = "󱡴", color = "purple" } },
      {
        map.CYCLE_SIGNATURE,
        desc = "Cycle LSP Signature",
        icon = { icon = "", color = "purple" },
        { map.MARKDOWN_TOGGLE, desc = "Toggle Markdown", icon = markdown_icon },
        { map.MARKDOWN_OPEN, desc = "Open Markdown", icon = markdown_icon },
        { map.MARKDOWN_CLOSE, desc = "Close Markdown", icon = markdown_icon },
        { map.MARKDOWN_RENDER, desc = "Refresh Markdown", icon = markdown_icon },
        { map.MARKDOWN_CLEAR, desc = "Clear Markdown", icon = markdown_icon },
        { map.MARKDOWN_SPLIT_TOGGLE, desc = "Toggle Splitview", icon = markdown_icon },
        { map.MARKDOWN_SPLIT_OPEN, desc = "Open Splitview", icon = markdown_icon },
        { map.MARKDOWN_SPLIT_CLOSE, desc = "Close Splitview", icon = markdown_icon },
        { map.MARKDOWN_SPLIT_REDRAW, desc = "Refresh Splitview", icon = markdown_icon },
      },
    })
  end,
  opts = {
    preset = "helix",
  },
}
