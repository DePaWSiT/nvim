return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			view = {
				width = 42
			},
		})
		require("DePaWSiT.remap")
		local api = require("nvim-tree.api")
		vim.keymap.set("n", NVIM_TREE_TOGGLE, api.tree.toggle)
		api.tree.open()
		vim.cmd("au VimEnter * wincmd l")
	end
}
