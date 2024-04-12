return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- Fully configured:

					-- Confirmed to work:
					"lua_ls", -- Lua
					"bashls", -- Bash Scripts
					"omnisharp", -- C#
					"clangd", -- C/C++
					"autotools_ls", -- Makefiles
					"jsonls", -- JSON
					"ltex", -- LaTeX
					"marksman", -- Markdown
					"tsserver", -- TypeScript/JavaScript
					"ruff_lsp", -- Python

					-- In progress
					"jdtls", -- Java

					-- Untested
					"angularls", -- Angular
					"arduino_language_server", -- Arduino
					"cmake", -- CMake
					"cssls", -- CSS
					"eslint", -- ESLint
					"gradle_ls", -- Gradle
					"groovyls", -- Groovy
					"html", -- HTML
					-- This is failing to install:
					"kotlin_language_server", -- Kotlin
					"rust_analyzer", -- Rust
					-- This is failing to install:
					--"vala_ls",                 -- Vala
					"lemminx", -- XML
					"yamlls", -- YAML
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Setup LSPs
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.clangd.setup({})
			lspconfig.autotools_ls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.ltex.setup({})
			lspconfig.marksman.setup({})
			lspconfig.ruff_lsp.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.kotlin_language_server.setup({})

			-- Omnisharp Configuration
			local pid = vim.fn.getpid()
			local omnisharp_path = vim.fn.expand("$HOME/.local/opt/omnisharp/OmniSharp")
			lspconfig.omnisharp.setup({
				cmd = { omnisharp_path, "--languageserver", "--hostPID", tostring(pid) },
			})

			-- Keybinds
		end,
	},
}
