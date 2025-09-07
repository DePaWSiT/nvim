return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
	cmd = { "ConformInfo" },
	keys = function()
		local remap = require("DePaWSiT.remap")
		return {
			{
				remap.FORMAT_FILE,
				function()
					require("conform").format({ async = true })
				end,
				mode = "n",
				desc = "Format buffer",
			},
		}
	end,
	opts = {
		log_level = vim.log.levels.DEBUG,
		formatters_by_ft = {
			cs = { "csharpier" },
			xml = { "xmlformat" }, -- Works for both .xml and .xaml files
			html = { "prettier" },
			css = { "prettier" },
			jsx = { "prettier" },
			typescript = { "prettier" },
			json = { "prettier" },
			scss = { "prettier" },
			md = { "prettier" },
			lua = { "stylua" },
		},
		format_on_save = {
			-- I recommend these options. See :help conform.format for details.
			lsp_format = "fallback",
			timeout_ms = 500,
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		formatters = {
			csharpier = {
				command = "csharpier",
				args = { "format", "$FILENAME", "--write-stdout" },
				stdin = true,
			},
			xmlformat = {
				command = "xmlformat",
				args = { "--selfclose", "-" },
				stdin = true,
			},
			prettier = {
				command = "prettier",
				args = { "$FILENAME" },
				stdin = true,
			},
			stylua = {
				command = "stylua",
				args = { "--indent-width", "2", "$FILENAME" },
				stdin = true,
			},
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)
		vim.filetype.add({
			extension = {
				xaml = "xml",
			},
		})
	end,
}
