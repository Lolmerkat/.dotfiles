return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    --- @type snacks.Config
    opts = {
        explorer = {
            replace_netrw = true
        },
        picker = {
            enabled = true,
        }
    },
    keys = {
        { "<leader>pv", function() Snacks.explorer() end, desc = "File Explorer" },
        { "<leader>ff", function() Snacks.picker.files() end, desc = "File Finder" },
        { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" }
    }
}
