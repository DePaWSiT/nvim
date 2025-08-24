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
		require('DePaWSiT.remap')
		local wk = require("which-key")
		local harpoon_icon = {icon = "󱡅", color = "cyan", name = "harpoon_icon"}
		local undotree_icon = {icon = "", color = "green", name = "undotree_icon"}
		wk.add({
			{FUGITIVE_GIT_STATUS, desc = "Git Status"},
			{HARPOON_ADD_FILE, desc = "Add Harpoon", icon = harpoon_icon},
			{HARPOON_TOGGLE_MENU, desc = "Menu Harpoon", icon = harpoon_icon},
			{HARPOON_NAV_NEXT, desc = "Next Harpoon", icon = harpoon_icon},
			{HARPOON_NAV_PREV, desc = "Prev Harpoon", icon = harpoon_icon},
			{HARPOON_NAV_1, desc = "Harpoon 1", icon = harpoon_icon},
			{HARPOON_NAV_2, desc = "Harpoon 2", icon = harpoon_icon},
			{HARPOON_NAV_3, desc = "Harpoon 3", icon = harpoon_icon},
			{HARPOON_NAV_4, desc = "Harponn 4", icon = harpoon_icon},
			{TELESCOPE_FIND_FILES, desc = "Find File"},
			{TELESCOPE_GIT_SEARCH, desc = "Git Find"},
			{TELESCOPE_GREP_SEARCH, desc = "Grep Search"},
			{UNDOTREE_TOGGLE, desc = "Undotree", icon = undotree_icon},
			{NVIM_TREE_TOGGLE, desc = "File Tree"},
			{TOGGLE_KEY, desc = "Toggle LSP Signature", icon = {icon = "󱡴", color = "purple"}},
			{CYCLE_SIGNATURE, desc = "Cycle LSP Signature", icon = {icon = "", color = "purple"}},
			--{LSP_DECLARATION, desc = "Go To Declaration"},
		})
	end,
	opts = {
		preset = "helix",
	}
}
