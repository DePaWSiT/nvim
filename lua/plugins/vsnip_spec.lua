return {
	{
		"hrsh7th/vim-vsnip-integ",
		event = "BufRead"
	},
	{
		"hrsh7th/vim-vsnip",
		event = "BufRead",
		init = function()
			local map = require("DePaWSiT.remap")
			-- Helper for mapping with expr and silent
			local function map_expr(mode, lhs, rhs)
				vim.keymap.set(mode, lhs, rhs, { expr = true })
			end

			map_expr({"i", "s"}, map.EXPAND, function()
				return vim.fn["vsnip#expandable"]() == 1 and "<Plug>(vsnip-expand)" or "<C-j>"
			end)

			-- vsnip#expand-or-jump
			map_expr({ "i", "s" }, map.EXPAND_OR_JUMP, function()
				return vim.fn  == 1 and "<Plug>(vsnip-expand-or-jump)" or "<C-l>"
			end)

			-- vsnip#jump-next
			map_expr({ "i", "s" }, map.JUMP_NEXT, function()
				return vim.fn  == 1 and "<Plug>(vsnip-jump-next)" or "<Tab>"
			end)

			-- vsnip#jump-prev
			map_expr({ "i", "s" }, map.JUMP_PREV, function()
				return vim.fn["vsnip#jumpable"](-1) == 1 and "<Plug>(vsnip-jump-prev)" or "<S-Tab>"
			end)

			-- Non-expression mappings (no need for expr=true)
			vim.keymap.set("n", map.SNIP_SELECT, "<Plug>(vsnip-select-text)")
			vim.keymap.set("x", map.SNIP_SELECT, "<Plug>(vsnip-select-text)")
			vim.keymap.set("n", map.SNIP_CUT, "<Plug>(vsnip-cut-text)")
			vim.keymap.set("x", map.SNIP_CUT, "<Plug>(vsnip-cut-text)")
		end,
	},
}
