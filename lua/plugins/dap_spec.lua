return {
  --"DePaWSiT/nvim-dap",
  "mfussenegger/nvim-dap",
  dev = false,
  event = { "BufRead", "BufNewFile" },
  config = function()
    local dap = require("dap")
    local map = require("DePaWSiT.remap")
    dap.set_log_level("TRACE")

    -- Keymaps for controlling the debugger
    vim.keymap.set("n", "q", function()
      dap.terminate()
      dap.clear_breakpoints()
    end, { desc = "Terminate and clear breakpoints" })

    vim.keymap.set("n", map.DAP_CONTINUE, dap.continue, { desc = "Start/continue debugging" })
    vim.keymap.set("n", map.DAP_STEP_OVER, dap.step_over, { desc = "Step over" })
    vim.keymap.set("n", map.DAP_STEP_INTO, dap.step_into, { desc = "Step into" })
    vim.keymap.set("n", map.DAP_STEP_OUT, dap.step_out, { desc = "Step out" })
    vim.keymap.set("n", map.DAP_TOGGLE_BREAKPOINT, dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
    vim.keymap.set("n", map.DAP_STEP_OVER_ALT, dap.step_over, { desc = "Step over (alt)" })
    vim.keymap.set("n", map.DAP_RUN_TO_CURSOR, dap.run_to_cursor, { desc = "Run to cursor" })
    vim.keymap.set("n", map.DAP_REPL_TOGGLE, dap.repl.toggle, { desc = "Toggle DAP REPL" })
    vim.keymap.set("n", map.DAP_DOWN, dap.down, { desc = "Go down stack frame" })
    vim.keymap.set("n", map.DAP_UP, dap.up, { desc = "Go up stack frame" })
  end,
}
