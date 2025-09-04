return {
	"nvim-tree/nvim-tree.lua",
	enabled = false,
	keys = function()
		local map = require("DePaWSiT.remap")
		return {
			map.SNACKS_EXPLORER_TOGGLE, "<cmd>require('nvim-tree.api').tree.toggle()<cr>",
		}
	end,
	opts = {
		view = {
			width = 42
		},
	},
	config = function()
		local function my_on_attach(bufnr)
			local api = require "nvim-tree.api"

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
		end
		require("nvim-tree").setup({
			on_attach = my_on_attach
		})
		local api = require("nvim-tree.api")
		local map = require("DePaWSiT.remap")
		vim.keymap.set("n", map.SNACKS_EXPLORER_TOGGLE, api.tree.toggle)
	end
}
