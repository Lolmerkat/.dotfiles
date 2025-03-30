return {
    {
'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    },
    {
        'saghen/blink.compat',
        lazy = true,
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' }
        }
    }
}
