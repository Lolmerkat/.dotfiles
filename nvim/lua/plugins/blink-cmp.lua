return {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
        "saghen/blink.compat",
        "hrsh7th/cmp-nvim-lsp",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        require("blink.cmp").setup({
            sources = {
                default = { "lsp", "path", "buffer" },
                providers = {
                    lsp = { score_offset = 10 }
                }
            },
        })
    end
}
