return {
	"mason-org/mason-lspconfig.nvim",
	event = "BufRead",
	opts = {
		automatic_enable = {
			exlclude = {
				"roslyn",
				"rzls",
			}
		},
		ensure_installed = {
			"html",
			"lua_ls",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
