return {
	"tpope/vim-fugitive",
	event = "VeryLazy",
	enabled = true,
	dependancies = {"nvim-lua/plenary.nvim"},
	config = function()
		local Job = require("plenary.job")

		Job:new({
			command = "git",
			args = { "fetch" },
			on_start = function()
				print("Starting git fetch...")
			end,
			on_exit = function(j, return_val)
				if return_val == 0 then
					print("git fetch completed successfully")
				else
					print("git fetch failed with exit code:", return_val)
					print("stderr:", table.concat(j:stderr_result(), "\n"))
				end
			end,
		}):start()
	end,
}
