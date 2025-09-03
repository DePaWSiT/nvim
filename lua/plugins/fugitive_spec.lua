return {
	"tpope/vim-fugitive",
	event = "VeryLazy",
	enabled = true,
	dependancies = {
		"nvim-lua/plenary.nvim",
		"folke/snacks.nvim",
	},
	config = function()
		local notify = require("snacks.notify")
		local notif_opts = {
			title = "Vim Fugutive",
			icon = "󰊢",
		}
		local Job = require("plenary.job")

		Job:new({
			command = "git",
			args = { "fetch" },
			on_start = function()
				notify.info("Starting git fetch...", notif_opts)
			end,
			on_exit = function(j, return_val)
				if return_val == 0 then
					notify.notify("Git fetch completed", notif_opts)
				else
					notify.warn("Git fetch failed", notif_opts)
				end
			end,
		}):start()
	end,
}
