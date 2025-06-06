local lsp = require("lspconfig")
local blink = require("blink.cmp")

return {
	setup = function()
		local lsp = require("lspconfig")
		require("mason-lspconfig").setup({
			handlers = {
				function (server_name)
					lsp[server_name].setup({
						capabilities = blink.get_lsp_capabilities()
					})
				end,
			}
		})
	end
}
