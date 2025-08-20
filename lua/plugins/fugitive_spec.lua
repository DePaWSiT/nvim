return {
	"tpope/vim-fugitive",
	event = "VeryLazy",
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
			on_stdout = function(_, line)
				print("stdout:", line)
			end,
			on_stderr = function(_, line)
				print("stderr:", line)
			end,
		}):start()
	end,
}
