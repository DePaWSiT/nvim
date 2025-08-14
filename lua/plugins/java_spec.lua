return {
	"nvim-java/nvim-java",
	lazy = false,
	config = function()
		require("java").setup()
		require("lspconfig").jdtls.setup({})
	end
}
