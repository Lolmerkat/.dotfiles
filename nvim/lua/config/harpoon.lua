local harpoon = require("harpoon")

harpoon:setup({
    settings = {
        save_on_ui_close = true
    }
})

vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })

