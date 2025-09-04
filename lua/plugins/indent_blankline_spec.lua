return {
	"lukas-reineke/indent-blankline.nvim",
	event = {"BufRead", "BufNewFile"},
	main = "ibl",
	config = function()
		vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", {fg = "#7ba32a", nocombine = true})
		require('ibl').setup({
			scope = {
				enabled = true,
				highlight = "IndentBlanklineContextChar",
			}
		})
	end,
}
