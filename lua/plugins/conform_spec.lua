return {
	'stevearc/conform.nvim',
	event = { "BufWritePre", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = function()
		local remap = require('DePaWSiT.remap')
		return {
			{
				remap.FORMAT_FILE,
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		}
	end,
	opts = {
		formatters_by_ft = {
			cs = { "csharpier" },
			xml = { "xmlformat" }, -- Works for both .xml and .xaml files
			html = { "prettier" },
			css = { "prettier" },
			jsx = { "prettier" },
			typescript = { "prettier" },
			json = { "prettier" },
			scss = { "prettier" },
			markdown = { "prettier" },
			lua = { "stylua" }
		},
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 2000, -- Increased timeout for larger files
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
			prettier = {
				command = "prettier",
				args = { [[--tab-width ]] .. vim.o.tabstop, },
				stdin = true,
			},
			stylua = {
				command = "stylua",
				args = { [[--indent-width ]] .. vim.o.tabstop, },
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
