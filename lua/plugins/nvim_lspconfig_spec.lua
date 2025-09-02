return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	version = ">=2.0.0",
	--has no setup so we skip the config
	config = function()
		--keymap for all lsp servers
		vim.lsp.config("*", {
			on_attach = function(client, bufnr)
				local nmap = function(keys, func, desc)
					if desc then
						desc = "LSP: " .. desc
					end
					vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
				end
				nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
				nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

				nmap('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
				nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
				nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
				nmap('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
				nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
				nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

				-- See `:help K` for why this keymap
				nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
				nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

				-- Lesser used LSP functionality
				nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
				nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
				nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
				nmap('<leader>wl', function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, '[W]orkspace [L]ist Folders')

				-- setup compiler config for omnisharp
				if client and client.name == "omnisharp" then
					nmap('gd', require('omnisharp_extended').lsp_definition, '[G]oto [D]efinition')
					nmap('gr', require('omnisharp_extended').lsp_references, '[G]oto [R]eferences')
					nmap('gI', require('omnisharp_extended').lsp_implementation, '[G]oto [I]mplementation')
					nmap('<leader>D', require('omnisharp_extended').lsp_type_definition, 'Type [D]efinition')
				end
			end
		})

		-- Manually configure servers (optional)
		-- Server must be in the list to be active tho
		local servers = {
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							checkThirdParty = false,
							library = vim.api.nvim_get_runtime_file("", true),
						},
					},
				},
			},
			bashls = {},
			pyright = {},
			jdtls = {},
			html = {},
			omnisharp = {
				cmd = {
					"omnisharp",
					"-z",
					"--hostPID",
					tostring(vim.fn.getpid()),
					'DotNet:enablePackageRestore=false',
					'--encoding',
					'utf-8',
					'--languageserver',
				},
				settings = {
					RoslynExtensionsOptions = {
						EnableAnalyzersSupport = true,
						EnableImportCompletion = true,
						-- Only run analyzers against open files when 'enableRoslynAnalyzers' is
						-- true
						AnalyzeOpenDocumentsOnly = true,
						-- Enables the possibility to see the code in external nuget dependencies
						EnableDecompilationSupport = true,
					},
				},
			},
		}

		for name, config in pairs(servers) do
			config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
			vim.lsp.config(name, config)
			vim.lsp.enable(name)
		end
	end,
}
