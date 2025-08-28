return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    opts = {
        automatic_enable = {
            exclude = {
                "lua_ls"
            }
        }
    }
}
