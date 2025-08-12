return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    --- @type snacks.Config
    opts = {
        explorer = {
            replace_netrw = true
        },
        -- image = {
        --     enabled = true
        -- },
        picker = {
            enabled = true,
            main = {
                file = false
            },
            sources = {
                explorer = {
                    hidden = true
                },
                lines = {
                    layout = {
                        preset = "default"
                    }
                }
            },
        },
        quickfile = {
            enabled = true
        },
        zen = {
            enabled = true,
            show = {
                statusline = true
            }
        }
    },
    keys = {
        { "<leader>pv", function() Snacks.explorer() end, desc = "File Explorer" },
        { "<leader>pp", function() Snacks.picker() end, desc = "Picker List" },
        { "<leader>ff", function() Snacks.picker.files() end, desc = "File Finder" },
        { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
        { "<leader>fl", function() Snacks.picker.lines() end, desc = "Find Lines" },
        { "<leader>ft", function() Snacks.picker.todo_comments() end, desc = "Find Todo Comments" },
        { "<leader>z", function() Snacks.zen() end, desc = "Toggle Zen Mode"},
    }
}
