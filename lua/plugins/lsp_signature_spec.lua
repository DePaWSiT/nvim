return {
  "ray-x/lsp_signature.nvim",
  event = "BufRead",
  opts = function()
    local map = require("DePaWSiT.remap")
    return {
      hint_enable = false,
      hint_prefix = {
        above = "↙ ", -- when the hint is on the line above the current line
        current = "← ", -- when the hint is on the same line
        below = "↖ ", -- when the hint is on the line below the current line
      },
      hint_inline = function()
        --return 'right_align'
        return "eol"
      end,
      handler_opts = {
        border = "double",
      },
      transparency = 5.0,
      toggle_key = map.TOGGLE_KEY,
      toggle_key_flip_floatwin_setting = true,
      select_signature_key = map.CYCLE_SIGNATURE,
    }
  end,
}
