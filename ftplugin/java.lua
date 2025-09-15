-- See `:help vim.lsp.start` for an overview of the supported `config` options.
local cwd = vim.fn.getcwd()
local root_dir = vim.fs.root(
  0,
  { ".git", "build.gradle", "build.gradle.kts", "build.xml", "pom.xml", "settings.gradle", "settings.gradle.kts" }
)
local project_name = vim.fn.fnamemodify(root_dir or cwd, ":p:h:t")
local workspace_root = vim.fn.expand("~/.java-cache/" .. project_name)

local bundles = {}
local debug_adapter_path = vim.fn.glob(
  vim.env.MASON .. "/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
  true
)
table.insert(bundles, debug_adapter_path)

local java_test_bundles =
  vim.split(vim.fn.glob(vim.env.MASON .. "/packages/java-test/extension/server/*.jar", true), "\n")
local excluded = {
  "com.microsoft.java.test.runner-jar-with-dependencies.jar",
  "jacocoagent.jar",
}
for _, java_test_jar in ipairs(java_test_bundles) do
  local fname = vim.fn.fnamemodify(java_test_jar, ":t")
  if not vim.tbl_contains(excluded, fname) then
    table.insert(bundles, java_test_jar)
  end
end

--spring boot tools
vim.list_extend(bundles, require("spring_boot").java_extensions())
local config = {
  name = "jdtls",

  capabilities = require("blink.cmp").get_lsp_capabilities(),
  -- `cmd` defines the executable to launch eclipse.jdt.ls.
  -- `jdtls` must be available in $PATH and you must have Python3.9 for this to work.
  --
  -- As alternative you could also avoid the `jdtls` wrapper and launch
  -- eclipse.jdt.ls via the `java` executable
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = { "jdtls", "-data", workspace_root },

  -- `root_dir` must point to the root of your project.
  -- See `:help vim.fs.root`
  root_dir = root_dir,
  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {},
  },

  -- This sets the `initializationOptions` sent to the language server
  -- If you plan on using additional eclipse.jdt.ls plugins like java-debug
  -- you'll need to set the `bundles`
  --
  -- See https://codeberg.org/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on any eclipse.jdt.ls plugins you can remove this
  init_options = {
    bundles = bundles,
  },
}
require("jdtls").start_or_attach(config)
