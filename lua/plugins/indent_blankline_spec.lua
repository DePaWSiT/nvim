return {
	"lukas-reineke/indent-blankline.nvim",
	event = {"BufRead", "BufNewFile"},
	main = "ibl",
	opts = function()
		vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", {fg = "#7ba32a", nocombine = true})
		return {
			scope = {
				enabled = true,
				highlight = "IndentBlanklineContextChar",
			},
		}
	end,
}
