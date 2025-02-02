-- SCSS / SASS
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.scss", "*.sass", "*.css", "*.svelte", "*.html" },
    callback = function()
        vim.cmd('CccHighlighterEnable')
    end
})

vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
    pattern = { "*.scss", "*.sass", "*.css", "*.svelte", "*.html" },
    callback = function()
        vim.cmd('CccHighlighterDisable')
    end
})

