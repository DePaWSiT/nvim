return {
	"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				view = {
					width = 42
				},
			})
		local api = require("nvim-tree.api")
		require("DePaWSiT.remap")
		vim.keymap.set("n", NVIM_TREE_TOGGLE, api.tree.toggle)
		api.tree.open()
		vim.cmd("au VimEnter * wincmd l")
		end
}
