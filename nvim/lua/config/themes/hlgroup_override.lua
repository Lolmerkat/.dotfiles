vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function ()
        vim.api.nvim_set_hl(0, "SnacksPickerList", { bg = "none" })
        vim.api.nvim_set_hl(0, "SnacksPickerPreview", { bg = "none" })
        vim.api.nvim_set_hl(0, "SnacksPickerInput", { bg = "none" })
        vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "none", nocombine = true })
        vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = "#316c71", bg = "none", nocombine = true })
    end
})
