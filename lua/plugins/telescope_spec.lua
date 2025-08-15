return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		defaults = {
			file_ignore_patterns = { "%__virtual.cs%" },
		},
	},
	config = function()
		require('DePaWSiT.remap')
		require('telescope').load_extension('harpoon')
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', TELESCOPE_FIND_FILES, builtin.find_files, {})
		vim.keymap.set('n', TELESCOPE_GIT_SEARCH, builtin.git_files, {})
		vim.keymap.set('n', TELESCOPE_GREP_SEARCH, function()
			builtin.grep_string({search = vim.fn.input("grep > ")});
		end)
	end,
}
