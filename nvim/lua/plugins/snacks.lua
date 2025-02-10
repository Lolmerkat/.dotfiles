return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    --- @type snacks.Config
    opts = {
        picker = { enabled = true }
    },
    keys = {
        { "<leader>pv", function() Snacks.explorer() end, desc = "File Explorer" }
    }
}
