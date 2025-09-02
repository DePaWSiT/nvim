return {
	"mason-org/mason-lspconfig.nvim",
	event = "VeryLazy",
	enabled = false,
	dependencies = {
		{ "mason-org/mason.nvim", opts = {}},
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			"lua_ls",
			"bashls",
			"pyright",
			"roslyn",
			"rzls",
			"html",
			"omnisharp",
		},
	},
}
