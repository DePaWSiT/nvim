return {
	"nvim-java/nvim-java",
	ft = { "java" },
	depdencies = {
		"neovim/nvim-lspconfig"
	},
	config = function()
		require("java").setup()
		require("lspconfig").jdtls.setup({})
	end
}
