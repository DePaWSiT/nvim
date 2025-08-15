return {
	"mbbill/undotree",
	config = function()
		require('DePaWSiT.remap')
		vim.keymap.set("n", UNDOTREE_TOGGLE, vim.cmd.undotreeToggle)
	end
}
