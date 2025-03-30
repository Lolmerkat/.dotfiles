local lsp = require("lspconfig")
local blink = require("blink.cmp")

return {
    setup = function()
        require("mason-lspconfig").setup_handlers({
            function(server)
                lsp[server].setup({
                    capabilities = blink.get_lsp_capabilities()
                })
            end
        })
    end
}
