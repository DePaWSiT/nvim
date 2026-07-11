return {
  "mbbill/undotree",
  event = { "BufNewFile", "BufReadPre" },
  config = function()
    local map = require("DePaWSiT.remap")
    vim.keymap.set("n", map.UNDOTREE_TOGGLE, vim.cmd.UndotreeToggle)
  end,
}
