RandomKeymap = "leaderText"

--Funny motions
--gc[1][2] - comments [1] number of lines in [2] direction
local map = {
	--Harpoon
	HARPOON_ADD_FILE = '<leader>ha',
	HARPOON_TOGGLE_MENU = '<leader>hh',
	HARPOON_NAV_NEXT = '<leader>]',
	HARPOON_NAV_PREV = '<leader>[',
	HARPOON_NAV_1 = '<leader>h1',
	HARPOON_NAV_2 = '<leader>h2',
	HARPOON_NAV_3 = '<leader>h3',
	HARPOON_NAV_4 = '<leader>h4',
	--Undotree
	UNDOTREE_TOGGLE = '<leader>ut',
	--LSP-Signature
	TOGGLE_KEY = '<C-n>',
	CYCLE_SIGNATURE = '<C-o>',
	--LSP-Config
	LSP_DECLARATION = 'grD',
	LSP_DEFINITION = 'grd',
	-- Dap config
	DAP_CONTINUE = '<F5>',
	DAP_STEP_OVER = '<F10>',
	DAP_STEP_INTO =	'<F11>',
	DAP_STEP_OUT = '<F12>',
	DAP_TOGGLE_BREAKPOINT = '<leader>b',
	DAP_STEP_OVER_ALT = '<leader>dO',
	DAP_RUN_TO_CURSOR = '<leader>dC',
	DAP_REPL_TOGGLE = '<leader>dr',
	DAP_DOWN = '<leader>dj',
	DAP_UP = '<leader>dk',
	--Snacks
	SHOW_BUFFERS = '<leader>,',
	SNACKS_GREP_SEARCH = '<leader>/',
	SNACKS_COMMAND_HISTORY = '<leader>:',
	SNACKS_NOTIFICATIONS = '<leader>n',
	SNACKS_EXPLORER_TOGGLE = '<leader>e',
	--find
	SNACKS_FIND_FILES = '<leader>fs',
	SNACKS_GIT_SEARCH = '<leader>gf',
	SNACKS_PROJECTS = '<leader>fp',
	SNACKS_RECENT = '<leader>fr',
	--git
	GIT_BRANCHES = '<leader>gb',
	GIT_LOG = '<leader>gl',
	GIT_LOG_LINE = '<leader>gL',
	GIT_STATUS = '<leader>gs',
	GIT_STASH = '<leader>gS',
	GIT_DIFF = '<leader>gd',
	GIT_LOG_FILE = '<leader>gf',
	--grep
	SNACKS_GREP_LINE = '<leader>sb',
	SNACKS_GREP_BUFFER = '<leader>sB',
	SNACKS_GREP_ALT = '<leader>sg',
	SNACKS_GREP_WORD = '<leader>sw',
	--search
	SNACKS_REGISTERS = '<leader>s"',
	SNACKS_HISTORY = '<leader>s/',
	SNACKS_AUTOCMDS = '<leader>sa',
	SNACKS_LINES = '<leader>sb',
	SNACKS_COMMAND_HISTORY_ALT = '<leader>sc',
	SNACKS_COMMANDS = '<leader>sC',
	SNACKS_DIAGNOSTICS = '<leader>sd',
	SNACKS_DIAGNOSTICS_BUFFER = '<leader>sD',
	SNACKS_HELP = '<leader>sh',
	SNACKS_HIGHLIGHTS = '<leader>sH',
	SNACKS_ICONS = '<leader>si',
	SNACKS_JUMPS = '<leader>sj',
	SNACKS_KEYMAPS = '<leader>sk',
	SNACKS_LOCATIONS = '<leader>sl',
	SNACKS_MARKS = '<leader>sm',
	SNACKS_MANUAL_PAGES = '<leader>sM',
	SNACKS_LAZY = '<leader>sp',
	SNACKS_QFLIST = '<leader>sq',
	SNACKS_RESUME = '<leader>sR',
	SNACKS_UNDO = '<leader>su',
	SNACKS_COLORSCHEME = '<leader>uC',
	--Snip
	EXPAND = "<C-j>",
	EXPAND_OR_JUMP = "<C-l>",
	JUMP_NEXT = "<Tab>",
	JUMP_PREV = "<S-Tab>",
	SNIP_SELECT = "ss",
	SNIP_CUT = "sc",
	--Mardown
	MARKDOWN_TOGGLE = "<leader>mt",
	MARKDOWN_PREVIEW = "<leader>mp",
	MARKDOWN_STOP = "<leader>ms",
}

--Dap ui
--edit - e
--expand - <C-r>
--open - o
--remove - d
--repl - r
--toggle - t

--Gitsigns
--]h - next hunk
--[h - prev hunk
--]H - last hunk
--[H - first hunk
--<leader>ghs - stage hunk
--<leader>ghu - undo stage hunk
--<leader>ghR - reset buffer
--<leader>ghp - preview hunk inline
--<leader>ghb - blame line
--<leader>ghB - blame buffer
--<leader>ghd - diff this
--<leader>ghD - diff this ~
--
--GRUG Search and Replace
--SEARCH_AND_REPLACE = '<leader>sr' 
--
--Trouble lsp info
--<leader>xx - diagnostic toggle
--<leader>xX - diagnostic toggle filter
--<leader>cs - symbols toggle
--<leader>cS - lsp toggle
--<leader>xL - loclist toggle
--<leader>xQ - qflist toggle
--[q - previous trouble item
--]q - next trouble item
--
--ToDo Comments
--<leader>xt - trouble todo toggle
--<leader>xT - trouble todo toggle filter
--<leader>st - todo telescope
--<leader>sT - todo telescope with keywords
--]t - next todo comments
--[t - previous todo comments
--
--[==[

--UnListed Plugin controls
--Autopair
--<cr> - extend brackets to new line
--
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
		--
		return map
