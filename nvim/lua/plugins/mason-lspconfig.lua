return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    opts = {
        automatic_installation = true,
        ensure_installed = {
            "lua_ls",
        }
    }
}
