return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		local tsconfig = require("nvim-treesitter.configs")
		tsconfig.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
