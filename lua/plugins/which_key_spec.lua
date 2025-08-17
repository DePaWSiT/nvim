return {
	"folke/which-key.nvim",
	event = "VeryLazy",
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
			{LSP_DEFINITION, desc = "Go To Definition", icon = {icon = "󰞔", color = "purple"}},
			{NEXT_HUNK, desc = "Next Hunk", icon = {icon = "", color = "red"}},
			{PREV_HUNK, desc = "Prev Hunk", icon = {icon = "", color = "red"}},
			{"<leader>hp", desc = "Preview Hunk", icon = {icon = "", color = "red"}},
			{"<leader>hs", desc = "Stage Hunk", icon = {icon = "", color = "red"}},
			{"<leader>hu", desc = "Unstage Hunk", icon = {icon = "", color = "red"}}
		})
	end,
	opts = {
		preset = "helix",
	}
}
