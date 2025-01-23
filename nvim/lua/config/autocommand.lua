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

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "markdown", "md" },
    callback = function ()
        vim.keymap.set(
            { 'i', 'n' }, "<Space><Space>m", function ()
                vim.cmd('Markview splitToggle')
            end, { buffer = true, silent = true }
        )
        vim.cmd('Markview splitEnable')
    end
})

vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
    pattern = { "markdown", "md" },
    callback = function ()
        vim.cmd('Markview splitDisable')
    end
})
