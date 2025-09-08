return {
  "lewis6991/gitsigns.nvim",
  event = { "BufRead", "BufNewFile" },
  opts = {
    signs = {
      add = { text = "▎" },
      change = { text = "▎" },
      delete = { text = "" },
      topdelete = { text = "" },
      changedelete = { text = "▎" },
      untracked = { text = "▎" },
    },
    signs_staged = {
      add = { text = "▎" },
      change = { text = "▎" },
      delete = { text = "" },
      topdelete = { text = "" },
      changedelete = { text = "▎" },
    },
    on_attach = function(buffer)
      local remap = require("DePaWSiT.remap")
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end

      -- stylua: ignore start
      map("n", remap.GIT_NEXT_HUNK, function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gs.nav_hunk("next")
        end
      end, "Next Hunk")
      map("n", remap.GIT_PREV_HUNK, function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gs.nav_hunk("prev")
        end
      end, "Prev Hunk")
      map("n", remap.GIT_LAST_HUNK, function() gs.nav_hunk("last") end, "Last Hunk")
      map("n", remap.GIT_FIRST_HUNK, function() gs.nav_hunk("first") end, "First Hunk")
      map({ "n", "v" }, remap.GIT_STAGE_HUNK, ":Gitsigns stage_hunk<CR>", "Stage Hunk")
      map({ "n", "v" }, remap.GIT_RESET_HUNK, ":Gitsigns reset_hunk<CR>", "Reset Hunk")
      map("n", remap.GIT_STAGE_BUFFER, gs.stage_buffer, "Stage Buffer")
      map("n", remap.GIT_UNDO_STAGE_HUNK, gs.undo_stage_hunk, "Undo Stage Hunk")
      map("n", remap.GIT_RESET_BUFFER, gs.reset_buffer, "Reset Buffer")
      map("n", remap.GIT_PREVIEW_HUNK, gs.preview_hunk_inline, "Preview Hunk Inline")
      map("n", remap.GIT_BLAME_LINE, function() gs.blame_line({ full = true }) end, "Blame Line")
      map("n", remap.GIT_BLAME_BUFFER, function() gs.blame() end, "Blame Buffer")
      map("n", remap.GIT_DIFF_THIS, gs.diffthis, "Diff This")
      map("n", remap.GIT_DIFF_SPECIAL, function() gs.diffthis("~") end, "Diff This ~")
      map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "GitSigns Select Hunk")
    end,
  },
}
