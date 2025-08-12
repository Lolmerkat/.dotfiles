return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	dependencies = {
		"oxy2dev/markview.nvim"
	},
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query",
                "css", "scss", "javascript", "html",
                "markdown", "markdown_inline", "latex"
            },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
