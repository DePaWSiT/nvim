return {
	"nvim-java/nvim-java",
	lazy = true,
	config = function() 
		require("java").setup()
		require("lspconfig").jdtls.setup({})
	end
}
