-- install with npm
return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = "cd app && npm install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	config = function()
		local map = require('DePaWSiT.remap')
		local opts = {silent = true, noremap = true}
		vim.keymap.set("n", map.MARKDOWN_TOGGLE, "<cmd>MarkdownPreviewToggle<cr>", opts)
		vim.keymap.set("n", map.MARKDOWN_PREVIEW, "<cmd>MarkdownPreview<cr>", opts)
		vim.keymap.set("n", map.MARKDOWN_STOP, "<cmd>MarkdownPreviewStop", opts)
	end,
}
