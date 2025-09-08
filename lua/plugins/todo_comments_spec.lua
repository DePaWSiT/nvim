return {
  "folke/todo-comments.nvim",
  cmd = { "TodoTrouble", "TodoTelescope" },
  event = { "BufRead", "BufNewFile" },
  opts = {},
	-- stylua: ignore
	keys = function()
		local map = require("DePaWSiT.remap")
		return {
		{ map.NEXT_TODO, function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
		{ map.PREV_TODO, function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
		{ map.TODO_TOGGLE, "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
		{ map.TODO_TOGGLE_FILTER, "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
	}
end,
}
