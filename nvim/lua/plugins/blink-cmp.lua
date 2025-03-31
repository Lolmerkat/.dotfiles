return {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
        "saghen/blink.compat",
        "hrsh7th/cmp-nvim-lsp",
    },
    opts = {
        sources = {
            default = { "lazydev", "lsp", "path", "buffer", "snippets" },
            providers = {
                lsp = { score_offset = 10 },
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    score_offset = 100,
                }
            }
        },
        snippets = {
            preset = "luasnip"
        }
    }
}
