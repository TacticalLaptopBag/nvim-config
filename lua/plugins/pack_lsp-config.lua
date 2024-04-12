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
            -- Autocompletion
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Setup LSPs
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilites = capabilities })
			lspconfig.tsserver.setup({ capabilites = capabilities })
			lspconfig.clangd.setup({ capabilites = capabilities })
			lspconfig.autotools_ls.setup({ capabilites = capabilities })
			lspconfig.bashls.setup({ capabilites = capabilities })
			lspconfig.jsonls.setup({ capabilites = capabilities })
			lspconfig.ltex.setup({ capabilites = capabilities })
			lspconfig.marksman.setup({ capabilites = capabilities })
			lspconfig.ruff_lsp.setup({ capabilites = capabilities })
			lspconfig.jdtls.setup({ capabilites = capabilities })
			lspconfig.kotlin_language_server.setup({ capabilites = capabilities })

			-- Omnisharp Configuration
			local pid = vim.fn.getpid()
			local omnisharp_path = vim.fn.expand("$HOME/.local/opt/omnisharp/OmniSharp")
			lspconfig.omnisharp.setup({
                capabilites = capabilities,
				cmd = { omnisharp_path, "--languageserver", "--hostPID", tostring(pid) },
			})

			-- Keybinds
		end,
	},
}
