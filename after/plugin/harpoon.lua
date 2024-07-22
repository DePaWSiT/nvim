require('DePaWSiT.remap')
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", HARPOON_ADD_FILE, mark.add_file)
vim.keymap.set("n", HARPOON_TOGGLE_MENU, ui.toggle_quick_menu)

vim.keymap.set("n", HARPOON_NAV_1, function() ui.nav_file(1) end)
vim.keymap.set("n", HARPOON_NAV_2, function() ui.nav_file(2) end)
vim.keymap.set("n", HARPOON_NAV_3, function() ui.nav_file(3) end)
vim.keymap.set("n", HARPOON_NAV_4, function() ui.nav_file(4) end)
