return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "Issafalcon/neotest-dotnet",
    "nvim-neotest/neotest-python",
    "nvim-neotest/neotest-go",
    "rouge8/neotest-rust",
    "rcasia/neotest-java",
    "codymikol/neotest-kotlin",
    "rcasia/neotest-bash",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-dotnet"),
        require("neotest-python"),
        require("neotest-go"),
        require("neotest-rust"),
        require("neotest-java"),
        require("neotest-kotlin"),
        require("neotest-bash"),
      },
    })
  end,
  keys = function()
    local remap = require("DePaWSiT.remap")
    return {
      {
        remap.RUN_TEST_NEAR,
        function()
          require("neotest").run.run()
        end,
        node = "n",
        desc = "Run nearest test",
      },
      {
        remap.RUN_TEST_FILE,
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        node = "n",
        desc = "Run tests in file",
      },
      {
        remap.RUN_TEST_NEAR_DAP,
        function()
          require("neotest").run.run({ strategy = "dap" })
        end,
        node = "n",
        desc = "Run nearest test (DAP)",
      },
      {
        remap.RUN_TEST_FILE_DAP,
        function()
          require("neotest").run.run(vim.fn.expand("%"), { strategy = "dap" })
        end,
        node = "n",
        desc = "Run tests in file (DAP)",
      },
      {
        remap.STOP_TEST,
        function()
          require("neotest").run.stop()
        end,
        node = "n",
        desc = "Stop testing",
      },
      {
        remap.OPEN_TEST_OUTPUT,
        function()
          require("neotest").output.open({ enter = true })
        end,
        node = "n",
        desc = "Open test output popup",
      },
      {
        remap.OPEN_TEST_PANEL,
        function()
          require("neotest").output_panel.open()
        end,
        node = "n",
        desc = "Open test output panel",
      },
      {
        remap.CLOSE_TEST_PANEL,
        function()
          require("neotest").output_panel.close()
        end,
        node = "n",
        desc = "Close test output panel",
      },
      {
        remap.CLEAR_TEST_PANEL,
        function()
          require("neotest").output_panel.clear()
        end,
        node = "n",
        desc = "Clear test output panel",
      },
      {
        remap.OPEN_TEST_SUMMARY,
        function()
          require("neotest").summary.open()
        end,
        node = "n",
        desc = "Open test summary",
      },
      {
        remap.CLOSE_TEST_SUMMARY,
        function()
          require("neotest").summary.close()
        end,
        node = "n",
        desc = "Close test summary",
      },
      {
        remap.RUN_MARKED_TESTS,
        function()
          require("neotest").summary.run_marked()
        end,
        node = "n",
        desc = "Run marked tests",
      },
      {
        remap.CLEAR_MARKED_TESTS,
        function()
          require("neotest").summary.clear_marked()
        end,
        node = "n",
        desc = "Clear marked tests",
      },
    }
  end,
}
