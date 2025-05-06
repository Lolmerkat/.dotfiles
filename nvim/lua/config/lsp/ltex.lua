return {
    setup = function ()
        require("lspconfig").ltex.setup({
            settings = {
                ltex = {
                    language = "de"
                }
            }
        })
    end
}
