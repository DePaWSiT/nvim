return {
	"windwp/nvim-ts-autotag",
	opts = {
		--defaults
		enable_close = true,
		enable_rename = true,
		enable_close_on_slash = false
	},
	config = function(opts)
		require("nvim-ts-autotag").setup(opts)
		--override defaults
		per_filetype = {
			["html"] = { enable_close = true }
		}
	end,
}
