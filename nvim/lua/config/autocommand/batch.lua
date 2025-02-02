-- Batch
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "bat", "dosbatch", "batch" },
    callback = function ()
        vim.schedule(function ()
            vim.keymap.set('i', "^", " ^<CR>", { buffer = true })
        end)
    end
})
