return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	version = ">=2.0.0",
	--has no setup so we skip the config
	config = function()
		local snacks = require('snacks')
		--keymap for all lsp servers
		vim.lsp.config("*", {
			on_attach = function(client, bufnr)
				local remap = require('DePaWSiT.remap')
				local nmap = function(keys, func, desc)
					if desc then
						desc = "LSP: " .. desc
					end
					vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
				end
				nmap(remap.LSP_RENAME, vim.lsp.buf.rename, '[R]e[n]ame')
				nmap(remap.LSP_CODE_ACTION, vim.lsp.buf.code_action, '[C]ode [A]ction')

				nmap(remap.LSP_GOTO_DEFINITION, function() snacks.picker.lsp_definition() end, '[G]oto [D]efinition')
				nmap(remap.LSP_GOTO_DECLARATION, function() snacks.picker.lsp_declaration() end, '[G]oto [D]eclaration')
				nmap(remap.LSP_GOTO_REFERENCES, function() snacks.picker.lsp_references() end, '[G]oto [R]eferences')
				nmap(remap.LSP_GOTO_IMPLEMENTATIONS, function() snacks.picker.lsp_implementation() end, '[G]oto [I]mplementation')
				nmap(remap.LSP_TYPE_DEFINITION, function() snacks.picker.lsp_type_definitions() end, 'T[y]pe Definition')
				nmap(remap.LSP_DOCUMENT_SYMBOLS, function() snacks.picker.lsp_symbols() end, '[D]ocument [S]ymbols')
				nmap(remap.LSP_WORKSPACE_SYMBOLS, function() snacks.picker.lsp_worlspace_symbols() end, '[W]orkspace [S]ymbols')

				-- See `:help K` for why this keymap
				nmap(remap.LSP_HOVER_DOC, vim.lsp.buf.hover, 'Hover Documentation')
				nmap(remap.LSP_SIGNATURE_HELP, vim.lsp.buf.signature_help, 'Signature Documentation')

				-- Lesser used LSP functionality
				nmap(remap.LSP_WORKSPACE_ADD_FOLDER, vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
				nmap(remap.LSP_WORKSPACE_REMOVE_FOLDER, vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
				nmap(remap.LSP_WORKPLACE_LIST_FOLDERS, function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, '[W]orkspace [L]ist Folders')

				-- setup compiler config for omnisharp
				if client and client.name == "omnisharp" then
					local extended = require("omnisharp_extended")
					nmap(remap.LSP_GOTO_DEFINITION, extended.lsp_definition, '[G]oto [D]efinition')
					nmap(remap.LSP_GOTO_REFERENCES, extended.lsp_references, '[G]oto [R]eferences')
					nmap(remap.LSP_GOTO_IMPLEMENTATIONS, extended.lsp_implementation, '[G]oto [I]mplementation')
					nmap(remap.LSP_TYPE_DEFINITION, extended.lsp_type_definition, 'T[y]pe Definition')
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
