return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	init = function()
		local map = require('DePaWSiT.remap')
		local wk = require("which-key")
		local harpoon_icon = {icon = "󱡅", color = "cyan", name = "harpoon_icon"}
		local undotree_icon = {icon = "", color = "green", name = "undotree_icon"}
		wk.add({
			{map.FUGITIVE_GIT_STATUS, desc = "Git Status"},
			{map.HARPOON_ADD_FILE, desc = "Add Harpoon", icon = harpoon_icon},
			{map.HARPOON_TOGGLE_MENU, desc = "Menu Harpoon", icon = harpoon_icon},
			{map.HARPOON_NAV_NEXT, desc = "Next Harpoon", icon = harpoon_icon},
			{map.HARPOON_NAV_PREV, desc = "Prev Harpoon", icon = harpoon_icon},
			{map.HARPOON_NAV_1, desc = "Harpoon 1", icon = harpoon_icon},
			{map.HARPOON_NAV_2, desc = "Harpoon 2", icon = harpoon_icon},
			{map.HARPOON_NAV_3, desc = "Harpoon 3", icon = harpoon_icon},
			{map.HARPOON_NAV_4, desc = "Harponn 4", icon = harpoon_icon},
			{map.TELESCOPE_FIND_FILES, desc = "Find File"},
			{map.TELESCOPE_GIT_SEARCH, desc = "Git Find"},
			{map.TELESCOPE_GREP_SEARCH, desc = "Grep Search"},
			{map.UNDOTREE_TOGGLE, desc = "Undotree", icon = undotree_icon},
			{map.NVIM_TREE_TOGGLE, desc = "File Tree"},
			{map.TOGGLE_KEY, desc = "Toggle LSP Signature", icon = {icon = "󱡴", color = "purple"}},
			{map.CYCLE_SIGNATURE, desc = "Cycle LSP Signature", icon = {icon = "", color = "purple"}},
			{map.OMNISHARP_REFERENCES, desc = "reference Omnisharp"},
			{map.OMNISHARP_DEFINITION, desc = "description Omnisharp"},
			{map.OMNISHARP_TYPE_DEFINITION, desc = "Type Definition Omnisharp"},
			{map.OMNISHARP_IMPLEMENTATION, desc = "Implementation Omnisharp"}
		})
	end,
	opts = {
		preset = "helix",
	}
}
