return {
	"ray-x/lsp_signature.nvim",
	opts = {
		require('DePaWSiT.remap'),
		bind = true,
		doc_lines = 16,
		hint_prefix = {
			above = "↙ ",  -- when the hint is on the line above the current line
			current = "← ",  -- when the hint is on the same line
			below = "↖ "  -- when the hint is on the line below the current line
		},
		handler_opts = {
			border = "double"
		},
		padding = ' ',
		transparency = 12.0,
		toggle_key = TOGGLE_KEY,
		select_signature_key = CYCLE_SIGNATURE,
	},
}
