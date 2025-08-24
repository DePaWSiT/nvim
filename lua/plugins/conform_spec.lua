return {
	'stevearc/conform.nvim',
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>fi",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			cs = { "csharpier" },
			xml = { "xmlformat" },  -- Works for both .xml and .xaml files
		},
		format_on_save = {
			lsp_fallback = false,
			timeout_ms = 2000,  -- Increased timeout for larger files
		},
		formatters = {
			csharpier = {
				command = "csharpier",
				args = { "--write-stdout" },
				stdin = true,
			},
			xmlformat = {
				command = "xmlformat",
				args = { "--selfclose", "-" },
				stdin = true,
			},
		},
	},
	config = function()
		vim.filetype.add({
			extension = {
				xaml = "xml",
			},
		})
	end,
}
