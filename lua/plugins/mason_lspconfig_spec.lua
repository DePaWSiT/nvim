return {
	"mason-org/mason-lspconfig.nvim",
	event = "BufRead",
	init = function()
		require('DePaWSiT.remap')
		vim.api.nvim_set_keymap("n", LSP_DECLARATION, "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", LSP_DEFINITION, "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
	end,
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
