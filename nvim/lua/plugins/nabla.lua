return {
    "jbyuki/nabla.nvim",
    keys = {
        { "<leader>P", function ()
            require('nabla').popup()
        end, desc = "Open Nabla Popup" }
    }
}
