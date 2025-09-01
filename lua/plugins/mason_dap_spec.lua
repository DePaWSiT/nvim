return {
	"jay-babu/mason-nvim-dap.nvim",
	event = "BufRead",
	dependancies = {
		"mason-org/mason.nvim",
	},
	opts = {
		ensure_installed = {
			"coreclr",
			"javadbg",
			"javatest",
		}
	},
	config = function()
		require("mason").setup()
		require("mason-nvim-dap").setup()
	end,
}
