return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      preset = {
        header = require("DePaWSiT.header"),
        keys = {},
      },
    },
    bigfile = {
      enabled = true,
      line_length = 2000,
    },
    picker = {
      sources = {
        explorer = {
          watch = false,
          --diagnostics = false, --causes pointer to do some funny stuff
        },
      },
    },
    explorer = { enabled = false },
    input = { enabled = true },
    notifier = { enabled = true },
    quickfile = {
      enabled = true,
      exclude = {},
    },
    scope = { enabled = true },
    words = { enabled = true },
  },
  keys = function()
    local map = require("DePaWSiT.remap")
    local Snacks = require("snacks")
    return {
      -- Top Pickers & Explorer
      {
        map.SHOW_BUFFERS,
        function()
          Snacks.picker.buffers()
        end,
        desc = "Buffers",
      },
      {
        map.SNACKS_GREP_SEARCH,
        function()
          Snacks.picker.grep()
        end,
        desc = "Grep",
      },
      {
        map.SNACKS_COMMAND_HISTORY,
        function()
          Snacks.picker.command_history()
        end,
        desc = "Command History",
      },
      {
        map.SNACKS_NOTIFICATIONS_HISTORY,
        function()
          Snacks.picker.notifications()
        end,
        desc = "Notification History",
      },
      {
        map.SNACKS_EXPLORER_TOGGLE,
        function()
          Snacks.explorer()
        end,
        desc = "File Explorer",
      },
      -- find
      {
        map.SNACKS_FIND_FILES,
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      },
      {
        map.SNACKS_GIT_SEARCH,
        function()
          Snacks.picker.git_files()
        end,
        desc = "Find Git Files",
      },
      {
        map.SNACKS_PROJECTS,
        function()
          Snacks.picker.projects()
        end,
        desc = "Projects",
      },
      {
        map.SNACKS_RECENT,
        function()
          Snacks.picker.recent()
        end,
        desc = "Recent",
      },
      -- git
      {
        map.GIT_BRANCHES,
        function()
          Snacks.picker.git_branches()
        end,
        desc = "Git Branches",
      },
      {
        map.GIT_LOG,
        function()
          Snacks.picker.git_log()
        end,
        desc = "Git Log",
      },
      {
        map.GIT_LOG_LINE,
        function()
          Snacks.picker.git_log_line()
        end,
        desc = "Git Log Line",
      },
      {
        map.GIT_STATUS,
        function()
          Snacks.picker.git_status()
        end,
        desc = "Git Status",
      },
      {
        map.GIT_STASH,
        function()
          Snacks.picker.git_stash()
        end,
        desc = "Git Stash",
      },
      {
        map.GIT_DIFF,
        function()
          Snacks.picker.git_diff()
        end,
        desc = "Git Diff (Hunks)",
      },
      {
        map.GIT_LOG_FILE,
        function()
          Snacks.picker.git_log_file()
        end,
        desc = "Git Log File",
      },
      -- Grep
      {
        map.SNACKS_GREP_LINE,
        function()
          Snacks.picker.lines()
        end,
        desc = "Buffer Lines",
      },
      {
        map.SNACKS_GREP_BUFFER,
        function()
          Snacks.picker.grep_buffers()
        end,
        desc = "Grep Open Buffers",
      },
      {
        map.SNACKS_GREP_ALT,
        function()
          Snacks.picker.grep()
        end,
        desc = "Grep",
      },
      {
        map.SNACKS_GREP_WORD,
        function()
          Snacks.picker.grep_word()
        end,
        desc = "Visual selection or word",
        mode = { "n", "x" },
      },
      -- search
      {
        map.SNACKS_REGISTERS,
        function()
          Snacks.picker.registers()
        end,
        desc = "Registers",
      },
      {
        map.SNACKS_HISTORY,
        function()
          Snacks.picker.search_history()
        end,
        desc = "Search History",
      },
      {
        map.SNACKS_AUTOCMDS,
        function()
          Snacks.picker.autocmds()
        end,
        desc = "Autocmds",
      },
      {
        map.SNACKS_LINES,
        function()
          Snacks.picker.lines()
        end,
        desc = "Buffer Lines",
      },
      {
        map.SNACKS_COMMAND_HISTORY_ALT,
        function()
          Snacks.picker.command_history()
        end,
        desc = "Command History",
      },
      {
        map.SNACKS_COMMANDS,
        function()
          Snacks.picker.commands()
        end,
        desc = "Commands",
      },
      {
        map.SNACKS_DIAGNOSTICS,
        function()
          Snacks.picker.diagnostics()
        end,
        desc = "Diagnostics",
      },
      {
        map.SNACKS_DIAGNOSTICS_BUFFER,
        function()
          Snacks.picker.diagnostics_buffer()
        end,
        desc = "Buffer Diagnostics",
      },
      {
        map.SNACKS_HELP,
        function()
          Snacks.picker.help()
        end,
        desc = "Help Pages",
      },
      {
        map.SNACKS_HIGHLIGHTS,
        function()
          Snacks.picker.highlights()
        end,
        desc = "Highlights",
      },
      {
        map.SNACKS_ICONS,
        function()
          Snacks.picker.icons()
        end,
        desc = "Icons",
      },
      {
        map.SNACKS_JUMPS,
        function()
          Snacks.picker.jumps()
        end,
        desc = "Jumps",
      },
      {
        map.SNACKS_KEYMAPS,
        function()
          Snacks.picker.keymaps()
        end,
        desc = "Keymaps",
      },
      {
        map.SNACKS_LOCATIONS,
        function()
          Snacks.picker.loclist()
        end,
        desc = "Location List",
      },
      {
        map.SNACKS_MARKS,
        function()
          Snacks.picker.marks()
        end,
        desc = "Marks",
      },
      {
        map.SNACKS_MANUAL_PAGES,
        function()
          Snacks.picker.man()
        end,
        desc = "Man Pages",
      },
      {
        map.SNACKS_LAZY,
        function()
          Snacks.picker.lazy()
        end,
        desc = "Search for Plugin Spec",
      },
      {
        map.SNACKS_QFLIST,
        function()
          Snacks.picker.qflist()
        end,
        desc = "Quickfix List",
      },
      {
        map.SNACKS_RESUME,
        function()
          Snacks.picker.resume()
        end,
        desc = "Resume",
      },
      {
        map.SNACKS_UNDO,
        function()
          Snacks.picker.undo()
        end,
        desc = "Undo History",
      },
      {
        map.SNACKS_COLORSCHEME,
        function()
          Snacks.picker.colorschemes()
        end,
        desc = "Colorschemes",
      },
    }
  end,
}
