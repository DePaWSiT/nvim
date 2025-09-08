return {
  "mbbill/undotree",
  event = "VeryLazy",
  config = function()
    local map = require("DePaWSiT.remap")
    vim.keymap.set("n", map.UNDOTREE_TOGGLE, vim.cmd.undotreeToggle)
  end,
}
