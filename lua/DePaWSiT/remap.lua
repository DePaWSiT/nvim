vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

RandomKeymap = "leaderText"

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

--plugin keybindings
FUGITIVE_GIT_STATUS = '<leader>gs'

--Harpoon
HARPOON_ADD_FILE = '<leader>ha'
HARPOON_TOGGLE_MENU = '<leader>hh'
HARPOON_NAV_NEXT = '<leader>hn'
HARPOON_NAV_PREV = '<leader>hp'
HARPOON_NAV_1 = '<leader>h1'
HARPOON_NAV_2 = '<leader>h2'
HARPOON_NAV_3 = '<leader>h3'
HARPOON_NAV_4 = '<leader>h4'

--Telescope
TELESCOPE_FIND_FILES = '<leader>fs'
TELESCOPE_GIT_SEARCH = '<leader> gf'
TELESCOPE_GREP_SEARCH = '<C-p>' --requires 'ripgrep' to be installed

--Undotree
UNDOTREE_TOGGLE = '<leader>ut'

--Nvim-tree
NVIM_TREE_TOGGLE = '<leader>tt'

--LSP-Signature
TOGGLE_KEY = "<C-n>"
CYCLE_SIGNATURE = "<C-o>"
--[==[

--UnListed Plugin controls
--LSP CONTROLS
--grn is mapped in Normal mode to vim.lsp.buf.rename()
--gra is mapped in Normal and Visual mode to vim.lsp.buf.code_action()
--grr is mapped in Normal mode to vim.lsp.buf.references()
--gri is mapped in Normal mode to vim.lsp.buf.implementation()
--grt is mapped in Normal mode to vim.lsp.buf.type_definition()
--gO is mapped in Normal mode to vim.lsp.buf.document_symbol()
--K is mapped to vim.lsp.buf.hover(), creating a buffer showing function documentation, buffer is closed with :q or just q
--CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()
--
-- BLINK (autocomplete) CONTROLS
--['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
--    ['<C-e>'] = { 'hide', 'fallback' },
--    
--    ['<Tab>'] = {
--      function(cmp)
--        if cmp.snippet_active() then return cmp.accept()
--        else return cmp.select_and_accept() end
--      end,
--      'snippet_forward',
--      'fallback'
--    },
--    ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
--    
--    ['<Up>'] = { 'select_prev', 'fallback' },
--    ['<Down>'] = { 'select_next', 'fallback' },
--    ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
--    ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
--    
--    ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
--    ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
--    
--    ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' }
--
--
-- FUGITIVE CONTROLS (:help fugitive)
-- :Git for regular git actions from the commandline
-- :Git with no option opens a summary window, use g? to show a couple of maps for actions
-- :Git commit and other commands that invoke the editor will use vim
-- :Git diff and other verbose, paginated commands have their output loaded in a temp buffer
-- :Git blame uses a temp buffer with maps, press enter to view where the line changed or g? to see other available maps
-- :Git mergetool and difftool load their changesets into the quickfix list
-- :Gdiffsplit 	for side by side comparison of the staged and working-tree version of a file
-- :Gwrite 	writes to both the working-tree and the staged version
-- :Gdelete 	removes the buffer and does a git rm on the staging
--
-- DOTNET CONTROLS
-- :Dotnet to show all the controls available
-- Most features require some additional dotnet tool, go to easy-dotnet.nvim repo for full install
--
-- NVIM TREE CONTROLS
-- :NvimTreeOpen to open the tree, then do g? to show the mappings
-- or do :help nvim-tree-commands
--
-- JAVA
--:JavaBuildBuildWorkspace - Runs a full workspace build
--:JavaBuildCleanWorkspace - Clear the workspace cache (for now you have to close and reopen to restart the language server after the deletion)
--
--Runner
--:JavaRunnerRunMain - Runs the application or selected main class (if there are multiple main classes)
--:JavaRunnerRunMain <arguments> <to> <pass>
--:JavaRunnerStopMain - Stops the running application
--:JavaRunnerToggleLogs - Toggle between show & hide runner log window
--
--DAP
--:JavaDapConfig - DAP is autoconfigured on start up, but in case you want to force configure it again, you can use this API
--Continue - 	F5
--Step over - F10 / <leader>d0
--Step into - F11
--Step out - 	F12
--breakpoint- <leader>b
--to_cursor - <leader>dC
--repl togg - <leader>dr
--stack down- <leader>dj
--stack up 	-	<leader>dk
--
--Test
--:JavaTestRunCurrentClass - Run the test class in the active buffer
--:JavaTestDebugCurrentClass - Debug the test class in the active buffer
--:JavaTestRunCurrentMethod - Run the test method on the cursor
--:JavaTestDebugCurrentMethod - Debug the test method on the cursor
--:JavaTestViewLastReport - Open the last test report in a popup window
--
--Profiles
--:JavaProfile - Opens the profiles UI
--
--Refactor
--:JavaRefactorExtractVariable - Create a variable from value at cursor/selection
--:JavaRefactorExtractVariableAllOccurrence - Create a variable for all occurrences from value at cursor/selection
--:JavaRefactorExtractConstant - Create a constant from the value at cursor/selection
--:JavaRefactorExtractMethod - Create a method from the value at cursor/selection
--:JavaRefactorExtractField - Create a field from the value at cursor/selection
--
--Settings
--:JavaSettingsChangeRuntime - Change the JDK version to another
--
--DB-MANAGEMENT
--:DBUI - Opening the ui for dadbod-ui
-- ]==]
