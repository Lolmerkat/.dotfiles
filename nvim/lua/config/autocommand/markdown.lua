-- Markdown
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.markdown", "*.md" },
    callback = function ()
        vim.keymap.set(
            { 'n' }, "<Space>mm", function ()
                vim.cmd('Markview splitToggle')
            end, { buffer = true, silent = true }
        )
        vim.cmd('Markview splitOpen')
    end
})

vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
    pattern = { "*.markdown", "*.md" },
    callback = function ()
        vim.cmd('Markview splitClose')
    end
})
