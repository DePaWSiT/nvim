return {
	"ray-x/lsp_signature.nvim",
	event = "BufRead",
	opts = {
		require('DePaWSiT.remap'),
		max_width = function()
			return vim.api.nvim_win_get_width(0) * 0.5
		end,
		hint_prefix = {
			above = "↙ ",  -- when the hint is on the line above the current line
			current = "← ",  -- when the hint is on the same line
			below = "↖ "  -- when the hint is on the line below the current line
		},
		hint_inline = function()
			--return 'right_align'
			return 'eol'
		end,
		handler_opts = {
			border = "double"
		},
		transparency = 5.0,
		toggle_key = TOGGLE_KEY,
		select_signature_key = CYCLE_SIGNATURE,
	},
}
