--Color scheme
require('monokai').setup { palette = require('monokai').soda}

--transparant background
function SetBackground(color)
	vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
end

SetBackground()
