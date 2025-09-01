return {
	"hoffs/omnisharp-extended-lsp.nvim",
	event = "VeryLazy",
	config = function()
		require("DePaWSiT.remap")
--		opts = {noremap = true, silent = true}
--		vim.api.nvim_set_keymap("n", OMNISHARP_REFERENCES, "<cmd>lua require('omnisharp_extended').lsp_references()<cr>", opts)
--		vim.api.nvim_set_keymap("n", OMNISHARP_DEFINITION, "<cmd>lua require('omnisharp_extended').lsp_definition({ jump_type = 'vsplit'})<cr>", opts)
--		vim.api.nvim_set_keymap("n", OMNISHARP_TYPE_DEFINITION, "<cmd>lua require('omnisharp_extended').lsp_type_definition()<cr>", opts)
--		vim.api.nvim_set_keymap("n", OMNISHARP_IMPLEMENTATION, "<cmd>lua require('omnisharp_extended').lsp_implementation()<cr>", opts)
	end,
}
