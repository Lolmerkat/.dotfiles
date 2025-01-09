local function remove_trailing_whitespace()
    vim.cmd([[%s/\s\+$//e]])
end

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = remove_trailing_whitespace
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "bat", "dosbatch", "batch" },
    callback = function ()
        vim.schedule(function ()
            vim.keymap.set('i', "^", " ^<CR>", { buffer = true })
        end)
    end
})
