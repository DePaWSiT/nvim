return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  event = "VeryLazy",
  dependancies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    local map = require("DePaWSiT.remap")
    harpoon:setup()

    vim.keymap.set("n", map.HARPOON_ADD_FILE, function()
      harpoon:list():add()
    end)
    vim.keymap.set("n", map.HARPOON_TOGGLE_MENU, function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    vim.keymap.set("n", map.HARPOON_NAV_NEXT, function()
      harpoon:list():next()
    end)
    vim.keymap.set("n", map.HARPOON_NAV_PREV, function()
      harpoon:list():prev()
    end)

    vim.keymap.set("n", map.HARPOON_NAV_1, function()
      harpoon:list():select(1)
    end)
    vim.keymap.set("n", map.HARPOON_NAV_2, function()
      harpoon:list():select(2)
    end)
    vim.keymap.set("n", map.HARPOON_NAV_3, function()
      harpoon:list():select(3)
    end)
    vim.keymap.set("n", map.HARPOON_NAV_4, function()
      harpoon:list():select(4)
    end)
  end,
}
